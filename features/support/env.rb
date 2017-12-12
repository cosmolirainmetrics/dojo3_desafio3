require 'cucumber'
require 'rspec/expectations'
require 'httparty'
require 'pry'

ENV['ENV'] = 'prod' unless ENV.key?'ENV'

# ENVIRONMENT = YAML.load_file('./config/environment.yml')[ENV['ENV']]

MASSA = YAML.load_file('./fixtures/default_data.yml')[ENV['ENV']]
