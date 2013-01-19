# encoding: utf-8
require 'spec_helper'

describe Isis::Plugin::FML do
  let(:speaker) { Random.speaker }
  triggers = [
    'fml',
    '!fml',
    "fml #{Random.alphanumeric}",
    "--!fml",
    "¿fml?",
    "¿!fml?",
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
    subject.response.should match /^FML/
  end

end
