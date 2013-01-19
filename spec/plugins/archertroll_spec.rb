require 'spec_helper'

describe Isis::Plugin::ArcherTroll do
  let(:speaker) { Random.speaker }

  it "ignores most things" do
    subject.receive_message( Random.message, speaker ).should not_respond
  end

  Isis::Plugin::Archer::QUOTES.each do |quote|
    it "responds to #{quote}" do
      subject.receive_message( quote, speaker ).should respond_with_a_message
    end
  end

end
