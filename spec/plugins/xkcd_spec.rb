# encoding: utf-8
require 'spec_helper'

# This spec is currently broken,
# I'm not sure how to have it load_archive syncronusly
# or how to reuse the loaded-archive
# most commands say "I'm not ready," because they aren't loaded yet.

describe Isis::Plugin::XKCD do
  let(:speaker) { Random.speaker }
  triggers = [
    '!xkcd',
    "!xkcd #{Random.alphanumeric}",
  ]
  comic_triggers = [
    '!xkcd random',
    '!xkcd new',
    '!xkcd last',
    "!xkcd #{rand 1024}",
    '!xkcd first',
    '!xkcd next',
    '!xkcd prev',
    '!xkcd date',
    '!xkcd number',
    '!xkcd reload',
  ]
  help_triggers = [
    '!xkcd commands',
    '!xkcd help',
    '!xkcd -h',
    '!xkcd --help',
    ]

  it "ignores most things" do
    subject.receive_message( Random.message, speaker ).should not_respond
  end

  triggers.each do |keyword|
    it "responds to #{keyword}" do
      subject.respond_to_msg?( keyword, speaker ).should be_true
    end
  end

  comic_triggers.each do |keyword|
    it "responds to #{keyword} with a comic" do
      subject.receive_message( keyword, speaker ).should respond_with_a_message
    end
  end

  help_triggers.each do |keyword|
    it "responds to #{keyword} help message" do
      response = subject.receive_message( keyword, speaker )
      response.should respond_with_a_message
      response.should match /Understood command arguments/
    end
  end

end
