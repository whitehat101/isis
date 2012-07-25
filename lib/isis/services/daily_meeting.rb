require 'em-timers'

class Isis::Service::DailyMeeting

  def initialize(room,muc)
    # jeremy_bot'
    if room =~ /engineering_room/
      EM::Timers.cron('40 8 * * 1-5') { speak muc, "sudo !archer" }
      EM::Timers.cron('55 8 * * 1-5') { speak muc, "sudo !archer" }
    end
  end

end
