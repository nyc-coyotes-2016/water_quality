module InfoDisplayable

  def display
    puts "Here are all the incident reports in your area:"
    self.incidents.each do |report|
      puts "Created At: #{report.created_date}
      Incident Borough: #{report.borough}
      Incident Address: #{report.incident_address}
      Incident Description: #{report.descriptor}
      Date Closed: #{report.closed_date}" + "\n\n"
    end
    length_detector
  end

  def length_detector
    if self.incidents.length == 0
      puts "There are no reported incidents in your area! Congrats, bro!"
    elsif self.incidents.length < 10
      puts "There are only #{self.incidents.length} incident reports in your area. Not bad, man."
    else
      puts "Wow. So many incidents. You need help, bro."
    end

  end



end
