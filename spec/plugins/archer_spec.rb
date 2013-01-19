require 'spec_helper'

describe Isis::Plugin::Archer do
  let(:speaker) { Random.speaker }

  it "ignores most things" do
    subject.receive_message( Random.message, speaker ).should not_respond
  end

  it "responds to !archer" do
    subject.receive_message( "!archer", speaker ).should respond_with_a_message
  end

end
