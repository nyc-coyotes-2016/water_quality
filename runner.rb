require 'open-uri'
require 'json'
require_relative 'water_quality'
require_relative 'incident'

BASE_URL = "https://data.cityofnewyork.us/resource/qfe3-6dkn.json"
ZIP_ID_QUERY = "incident_zip="


puts "Please enter your zip code"
user_response_zip = gets.chomp

json_zip_response = open(BASE_URL + "?" + ZIP_ID_QUERY + user_response_zip).read

ruby_hash_response = JSON.parse(json_zip_response)

complaints =   ruby_hash_response.map do |incident|
      WaterIncident.new(incident)
     end
     p complaints
