require 'open-uri'
require 'json'

class WaterQualityController
attr_reader :incidents
include InfoDisplayable

BASE_URL = "https://data.cityofnewyork.us/resource/qfe3-6dkn.json"
ZIP_ID_QUERY = "incident_zip="

  def initialize(args)
    @incidents =  args.fetch(:incidents,[])
  end


  def run
    incident_gen(api_parse(ask))
    display
  end

  def ask
    puts "Welcome to The Water Quality Complaint Department:\n Where we tell you how bad the   water is in your area!\n Please enter the zip code you'd like to investigate:"
    user_response_zip = STDIN.gets.chomp
    json_zip_response = open(BASE_URL + "?" + ZIP_ID_QUERY + user_response_zip).read
  end

  def api_parse(user_zip)
    JSON.parse(user_zip)
  end

  def incident_gen(incident_hashes)
    incident_hashes.map do |incident|
       incidents << WaterIncident.new(incident)
    end
  end

end
