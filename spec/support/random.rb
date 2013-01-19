require 'random_data'

class Random
  def self.speaker
    "#{firstname} #{initial} #{lastname}"
  end

  def self.message
    paragraphs
  end
end
