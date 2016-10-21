module InfoDisplay

  def display
    puts "Here are all the incident reports in your area:"
    self.incidents.each do |report|
      puts "Created At: #{report.created_date}
      Incident Borough: #{report.borough}
      Incident Address: #{report.incident_address}
      Incident Description: #{report.descriptor}
      Date Closed: #{report.closed_date}" + "\n\n"
    end
  end

end
