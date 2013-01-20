require 'yaml'
require 'singleton'
require 'isis/plugins'

module Isis
  class Chatbot

    attr_accessor :config, :connection, :plugins

    def initialize
      load_config
      load_plugins
      create_connection
    end

    def load_config
      @config = YAML::load(File.read(File.join(ROOT_FOLDER, 'config.yml')))
    end

    def load_plugins
      @plugins = []
      class_prefix = "Isis::Plugin::"
      @config['enabled_plugins'].each do |plugin|
        @plugins << eval(class_prefix + plugin).new
      end
    end

    def create_connection
      begin
        require "isis/connections/#{config['service']}"
      rescue
        raise "Unknown service - please check your config.yml"
      end

      @connection = case config['service']
        when 'hipchat'
          Isis::Connections::HipChat.new(config)
        when 'hipchat-smackr'
          Isis::Connections::HipChatSmackr.new(config)
        when 'campfire'
          Isis::Connections::Campfire.new(config)
        else
          raise "Invalid service selected - please check your config.yml"
      end
    end

    # Recreate connection with no history loading, so we don't load any messages
    # that may have triggered the exception
    def recover_from_exception
      config['hipchat']['history'] = 0 rescue {}
      create_connection
    end

    def connect
      connection.connect
    end

    def reconnect
      connection.reconnect
    end

    def join
      begin
        connection.join
        EventMachine::Timer.new(1) { hello_message }
      rescue => e
        puts "## EXCEPTION in Chatbot join: #{e.message}"
        recover_from_exception
      end
    end

    def speak(message)
      begin
        connection.yell message
      rescue => e
        puts "## EXCEPTION in Chatbot speak: #{e.message}"
        recover_from_exception
      end
    end

    def register_plugins
      connection.register_plugins(self)
    end

    def still_connected?
      connection.still_connected?
    end

    def trap_signals
      [:INT, :TERM].each do |sig|
        trap(sig) do
          puts "Trapped signal #{sig.to_s}"
          puts "Shutting down gracefully"
          goodbye_message
          EventMachine::Timer.new(0) { EventMachine::stop_event_loop }
        end
      end
    end

    def hello_message
      raw = config['bot']['hello']
      plugin = @plugins.select {|p| p.class.name == "Isis::Plugin::#{raw}" }
      speak (plugin.empty? ? raw : plugin.first.response)
    end

    def goodbye_message
      raw = config['bot']['goodbye']
      plugin = @plugins.select {|p| p.class.name == "Isis::Plugin::#{raw}" }
      speak (plugin.empty? ? raw : plugin.first.response)
    end

    def run
      connect
      trap_signals
      register_plugins
      join

      # am I still connected, bro? Check every 10 seconds
      EventMachine::add_periodic_timer(10) do
        unless still_connected?
          puts "Disconnected! Reconnecting..."
          reconnect
          trap_signals
          register_plugins
          join
        end
      end
    end
  end
end
