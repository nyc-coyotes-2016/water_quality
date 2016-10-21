require 'open-uri'
require 'json'
require_relative 'info_displayable'
require_relative 'controller'
require_relative 'model'

demo = WaterQualityController.new(:incidents => [])

demo.run



