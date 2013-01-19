require 'spec_helper'

describe Isis::Plugin::Archer do
  it "works" do
    plugin = Isis::Plugin::Archer.new
    plugin.receive_message("hello", "speaker", nil).should be nil
  end
  it "responds to !archer" do
    plugin = Isis::Plugin::Archer.new
    plugin.receive_message("!archer", "speaker", nil).should be_a_kind_of String
  end
end
