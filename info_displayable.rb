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
      puts "Wow. So many incidents. You need help, bro. Can I recommend a Brita?"
    end

  end

 # def water_issue_stat
 #   puts self.incidents.select { |report| report.descriptor == "Clear Water With Other Particles (Use #Comments) (QEZ)" }.count
 # end

 # def ask
 #   puts "Welcome to The Water Quality Complaint Department:\n Where we tell you how bad the water is in #your area!\n Please enter the zip code you'd like to investigate:"
 #   user_response_zip = STDIN.gets.chomp
 #   json_zip_response = open(self.BASE_URL + "?" + self.ZIP_ID_QUERY + user_response_zip).read
#
 # end
#def user_query
# puts "enter zip code"
# user_zip = STDIN.gets.chomp
#end

#def query_loop
## puts "Welcome to The Water Quality Complaint Department:\n Where we tell you how bad the water is in your area!\n Please enter the zip code you'd like to investigate:"
# #user_response_zip = STDIN.gets.chomp

# until user_query == 'done'

#   self.run
#   puts "Would you like to search another zip code? Please enter that now or type done."
#   user_response_zip = STDIN.gets.chomp
# end

#end
end
