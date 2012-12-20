# Plugin base class

module Isis
  module Plugin
    class Base
      def receive_message(msg, speaker, room = nil)
        if respond_to_msg?(msg, speaker)
          @room = room
          response
        end
      end
    end
  end
end
