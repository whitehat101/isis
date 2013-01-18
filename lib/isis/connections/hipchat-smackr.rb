# HipChat connection
# Uses Smackr's XMPP connection to HipChat

require 'smackr'
require 'isis/connections/base'

class Isis::Connections::HipChatSmackr < Isis::Connections::Base

  attr_accessor :client, :rooms

  def initialize(config)
    load_config(config)
    create_smackr
  end

  # API
  def connect
    client.connect!
    # @client.auth(config['hipchat']['password'])
    # send_jabber_presence
    @join_time = Time.now
  end

  # API
  def reconnect
    kill_and_clean_up
    create_smackr
    connect
  end

  # API
  def register_plugins(bot)
    @plugins = bot.plugins
  end

  # API
  def yell(message)
    rooms.each do |name,room|
      room.send_message message
    end
  end

  # API
  def join
    config['hipchat']['rooms'].each do |room_name|

      opts = {
        nickname: config['hipchat']['name'],
         history: config['hipchat']['history']
      }

      puts "About to join: #{room_name} #{opts}".green
      rooms[room_name] = client.join_room room_name, opts do |msg,room|
        message = msg.get_body
        speaker = msg.get_from.split('/').last

        # always respond to commands prefixed with 'sudo '
        sudo = message.match /^sudo (.+)/
        message = sudo[1] if sudo
        self_speaking = speaker == @config['hipchat']['name']

        who =
          if self_speaking
            speaker.yellow
          else
            speaker.green
          end
        who = who.underline if sudo
        puts "#{who}: #{message.white}"

        # self_speaking = false # TEST

        # ignore our own messages
        unless self_speaking and not sudo
          @plugins.each do |plugin|
            # puts "#{plugin.to_s.underline}"
            begin
              response = plugin.receive_message(message, speaker, room)
              unless response.nil?
                if response.respond_to?('each')
                  response.each {|line| room.send_message(line)}
                else
                  room.send_message(response)
                end
              end
            rescue => e
              room.send_message "ERROR: Plugin #{plugin.class.name} just crashed"
              room.send_message "Message: #{e.message}"
            end
          end
        end
      end
    end
  end

  # API
  def still_connected?
    client.xmpp_connection and client.xmpp_connection.is_connected
  end

  #  ----------------------------------------

  # def send_jabber_presence
  #   @client.send(Jabber::Presence.new.set_type(:available))
  # end

  def kill_and_clean_up
    client.disconnect!
  end

  def create_smackr
    @client = Smackr.new({
        server: config['hipchat']['jid'].split('@').last,
      username: config['hipchat']['jid'],
      password: config['hipchat']['password'],
    })
    @rooms = {}
  end


end
