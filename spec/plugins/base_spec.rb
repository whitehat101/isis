require 'spec_helper'

plugins = [
  Isis::Plugin::Archer,
  Isis::Plugin::ArcherTroll,
  Isis::Plugin::Bash,
  Isis::Plugin::EpicFail,
  Isis::Plugin::FML,
  Isis::Plugin::Futurama,
  Isis::Plugin::HipRepeater,
  Isis::Plugin::LikeABoss,
  Isis::Plugin::Metal,
  Isis::Plugin::Olaf,
  Isis::Plugin::PennyArcade,
  Isis::Plugin::QuickMeme,
  Isis::Plugin::RandomResponses,
  Isis::Plugin::TWSS,
  Isis::Plugin::Uptime,
  Isis::Plugin::WalMart,
  Isis::Plugin::XKCD,
]

describe "Basic Plugin Test" do
  plugins.each do |plugin|

    describe plugin do
      let(:speaker) { Random.speaker }
      let(:message) { Random.message }

      it "responds to receive_message with nil, [strings], or string" do
        subject.receive_message( message, speaker ).should be_a_plugin_response
      end
    end

  end
end

