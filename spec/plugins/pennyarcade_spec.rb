# encoding: utf-8
require 'spec_helper'

describe Isis::Plugin::PennyArcade do
  let(:speaker) { Random.speaker }
  triggers = [
    '!pa',
    '!Pa',
    '!pA',
    '!PA',
  ]

  it "ignores most things" do
    subject.receive_message( Random.message, speaker ).should not_respond
  end

  triggers.each do |keyword|
    it "responds to #{keyword}" do
      subject.respond_to_msg?( keyword, speaker ).should be_true
    end
  end

  it "outputs good stuff" do
    response = subject.response
    response.should respond_with_a_message
    response.should be_a_kind_of Array
    response.length.should be 2
  end

end
