require 'spec_helper'

describe "Configuration Files - config.yml" do
  files = ["#{ROOT_FOLDER}/config.yml.example"]
  files << "#{ROOT_FOLDER}/config.yml" if File.exists?("#{ROOT_FOLDER}/config.yml")

  files.each do |file|
    describe file do
      let(:config) { YAML.load_file( subject ) }

      it "contains the minimal setup" do
        config['service'].should be_a_kind_of String
        config['enabled_plugins'].should be_a_kind_of Array
        config['bot'].should be_a_kind_of Hash
      end

      it "contains the required setup for the service" do
        if config['service'].match 'hipchat'
          config['hipchat']['jid'].should be_a_kind_of String
          config['hipchat']['name'].should be_a_kind_of String
          config['hipchat']['password'].should be_a_kind_of String
          config['hipchat']['history'].should be_a_kind_of Integer
          config['hipchat']['rooms'].should be_a_kind_of Array
          config['hipchat']['rooms'].each do |room|
            room.should be_a_kind_of String
          end

        elsif config['service'].match 'campfire'
          # Honestly, I've never used Campfire
          pending "campfire configuration is not spec'd"
          # subdomain: subdomain  # from subdomain.campfirenow.com
          # # auth_mode: Can use API key or username/password.
          # # Supported values: api, username
          # auth_mode: api
          # api_key: api_key_goes_here  # enter if using "api" auth_mode
          # username: username          # enter if using "username" auth_mode
          # password: password          # also enter if using "username" auth_mode
          # room: room_name             # only supports one room for campfire
          # ssl: true
        end
      end

    end
  end
end
