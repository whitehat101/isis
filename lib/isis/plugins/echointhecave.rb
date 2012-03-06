require 'isis/plugins/base'

class Isis::Plugin::EchoInTheCave < Isis::Plugin::Base
  MAP = {
    "@cave" => "@1 @2 @3",
    "@zoidberg" => "@fry"
  }

  def respond_to_msg?(msg, speaker)
    matched = false
    @msg = msg

    MAP.each do |k,v|
      if msg.match /#{k}/i
        @msg = msg.gsub /#{k}/i, v
        matched = true
      end
    end
    @speaker = speaker

    matched
  end

  def response
    "#{@speaker} says, #{@msg}"
  end

end
