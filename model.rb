class WaterIncident
attr_reader :unique_key, :incident_address, :descriptor, :incident_zip, :borough, :created_date, :closed_date

  def initialize(args={})
    @unique_key = args.fetch("unique_key","N/A")
    @incident_zip = args.fetch("incident_zip","N/A")
    @descriptor = args.fetch("descriptor","N/A")
    @incident_address = args.fetch("incident_address","N/A")
    @borough = args.fetch("borough","N/A")
    @created_date = args.fetch("created_date","N/A")
    @closed_date = args.fetch("closed_date","N/A")
  end


end
