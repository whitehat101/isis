# More info at https://github.com/guard/guard#readme
interactor :off

guard 'bundler' do watch('Gemfile') end

guard 'rspec', cli: '--drb' do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/isis/plugins/(.+)\.rb$})      { |m| "spec/plugins/#{m[1]}_spec.rb" }

  watch('config.yml.example')                 { "spec/misc/config_spec.rb" }
  watch('spec/spec_helper.rb')                { "spec" }
  watch(%r{^spec/support/(.+)\.rb$})          { "spec" }
end
