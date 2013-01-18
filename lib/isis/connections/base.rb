module Isis
  module Connections
    class Base

      # Methods to implement: connect, speak, handle_message
      #
      attr_accessor :config, :join_time

      def load_config(loaded_config)
        @config = loaded_config
      end

      def connect;        raise 'required method' end
      def speak;          raise 'required method' end
      def handle_message; raise 'required method' end
    end
  end
end
