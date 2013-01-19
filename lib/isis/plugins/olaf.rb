require 'isis/plugins/base'

class Isis::Plugin::Olaf < Isis::Plugin::Base

  def respond_to_msg?(msg, speaker)
    @commands = msg.downcase.split
    @commands[0] == "!olaf"
  end

  def response
    case @commands[1]
    when "metal"
      ["http://img834.imageshack.us/img834/5195/metalface.jpg", "METAL FACE"]
    when "berserker", "berzerker", "sing"
      "http://www.youtube.com/watch?v=I4E08zeCqjo"
    when "girl"
      "Skrelnick"
    when "home", "where"
      "Moscow"
    when "commands", nil
      "Understood commands for !olaf: metal, berserker, berzerker, sing, girl, home, where"
    end
  end
end

