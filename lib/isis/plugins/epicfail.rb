# epicfail.rb
# Random post from epicfail.com

require 'isis/plugins/base'
require 'nokogiri'
require 'open-uri'

class Isis::Plugin::EpicFail < Isis::Plugin::Base

  def respond_to_msg?(msg, speaker)
    /\bfail\b/i =~ msg
  end

 def response
    page_number = rand(933)
    page = Nokogiri::HTML(open("http://www.epicfail.com/pictures/page/#{page_number}/"))
    selected = rand(page.css('.post').length)
    image = page.css('.post .post-content a img')[selected]
    title = page.css('.post .post-title a')[selected]
    [image['src'], title.text]
  end

end
