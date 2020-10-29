# -*- encoding : utf-8 -*-
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'rspec'
require 'cucumber'
require 'faker'
require 'report_builder'
require 'date'
require 'rubycritic'

ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")