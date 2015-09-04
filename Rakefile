require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('age_validator', '0.1.0') do |p|
  p.summary        = "ActiveRecord age validation."
  p.description    = "Validate age from a date field in Active Record."
  p.licenses       = ['MIT']
  p.url            = "https://github.com/rentziass/age_validator.git"
  p.author         = "Francesco Renzi"
  p.email          = "rentziass@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }