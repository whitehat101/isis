# Include all files in plugins/ dir

Dir[File.dirname(__FILE__) + '/services/*'].each { |file| require file }
