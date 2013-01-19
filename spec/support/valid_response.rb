# Definitions for:
# - be_a_plugin_response
# - respond_with_a_message
# - not_respond

RSpec::Matchers.define :be_a_plugin_response do
  match do |actual|
    helper actual
  end

  def helper actual
    return false unless [NilClass,Array,String].include? actual.class
    actual.each { |line| return false unless line.is_a?(String) }  if actual.is_a?(Array)
    true
  end

  failure_message_for_should do |actual|
    "expected that #{actual} would be a String, a nil, or an Array of Strings"
  end

  failure_message_for_should_not do |actual|
    "expected that #{actual} wouldn't be a String, a nil, or an Array of Strings"
  end
end

RSpec::Matchers.define :respond_with_a_message do
  match do |actual|
    helper actual
  end

  def helper actual
    return false unless actual
    return false unless [Array,String].include? actual.class
    actual.each { |line| return false unless line.is_a?(String) }  if actual.is_a?(Array)
    true
  end

  failure_message_for_should do |actual|
    "expected that #{actual} would be a String or an Array of Strings"
  end

  failure_message_for_should_not do |actual|
    "expected that #{actual} would be nil"
  end
end

RSpec::Matchers.define :not_respond do
  match do |actual|
    actual.nil?
  end

  failure_message_for_should do |actual|
    "expected no response (#{actual} should be nil)"
  end
end
