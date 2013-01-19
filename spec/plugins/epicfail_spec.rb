# encoding: utf-8
require 'spec_helper'

describe Isis::Plugin::EpicFail do
  let(:speaker) { Random.speaker }
  triggers = [
    'fail',
    '(yuno) fail',
    "FAIL",
    "¡EPIC FAIL!",
    "fail-panda",
    "-fail-",
  ]

  it "ignores most things" do
    subject.receive_message( Random.message, speaker ).should not_respond
  end

  triggers.each do |keyword|
    it "responds to #{keyword}" do
      response = subject.receive_message( keyword, speaker )
      response.should respond_with_a_message
      response.should be_a_kind_of Array
      response.length.should be 2
    end
  end

end
