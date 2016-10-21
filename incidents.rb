class Incidents
  attr_reader :water_incidents

  def initialize(args = {})
    @water_incidents = args.fetch(:water_incidents, [])
  end

end
