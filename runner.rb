require 'open-uri'
require 'json'
require_relative 'view'
require_relative 'controller'
require_relative 'model'

test = WaterQualityController.new(:incidents => [])

test.run
test.display

