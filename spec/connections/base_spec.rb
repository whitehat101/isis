require 'spec_helper'
# Dir.glob("#{ROOT_FOLDER}/lib/isis/connections/*", &method(:require))

require 'isis/connections/campfire'
require 'isis/connections/hipchat'

connections = [
  Isis::Connections::Campfire,
  Isis::Connections::HipChat,
]

if RUBY_PLATFORM == "java"
  require 'isis/connections/hipchat-smackr'
  connections << Isis::Connections::HipChatSmackr
end

# .superclass

describe "Basic Connection Test" do

  describe Isis::Connections::Base do
    it "responds to methods" do
      should respond_to(:load_config, :connect, :speak, :handle_message)
    end
  end

  connections.each do |connection|
    describe connection do

      it "is a subclass of Isis::Connections::Base" do
        connection.superclass.should be Isis::Connections::Base
      end

      it "does what it needs to connect"

    end
  end

end
