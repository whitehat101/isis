require 'spec_helper'

describe Isis::Plugin::Bash do
  let(:speaker) { Random.speaker }
  triggers = [
    '!bash',
    "!bash #{Random.alphanumeric}",
    "--!bash",
    "ka-bash",
    "#{Random.alphanumeric} !bash #{Random.alphanumeric}",
    'bash',
    "#{Random.alphanumeric} bash #{Random.alphanumeric}",
  ]

  it "ignores most things" do
    subject.receive_message( Random.message, speaker ).should not_respond
  end

  triggers.each do |keyword|
    it "responds to #{keyword}" do
      subject.respond_to_msg?( keyword, speaker ).should be_true
      # subject.receive_message( keyword, speaker ).should respond_with_a_message
    end
  end

  it "outputs good stuff" do
    # subject.stub(:respond_to_msg?) { true }
    # subject.receive_message( '', speaker ).should match /bash\.org/
    subject.response.should match /bash\.org/
  end

end
