# Include all files in plugins/ dir

# should be lazy loaded.
Dir[File.dirname(__FILE__) + '/plugins/*'].each { |file| require file }
