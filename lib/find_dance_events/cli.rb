class FindDanceEvents::CLI

  def call
    puts "Find Dance Events"
    list_locations
    menu
    get_events
  end

  def list_locations
    puts <<-LOCATIONS.gsub /^\s+/, ""
    1. Alabama
    2. Florida
    3. Georgia
    LOCATIONS
  end

def menu
  puts "Where would you like to see dance events from?"
  input = gets.strip
  case input
  when "1"
    puts "Alabama events:"
  when "2"
    puts "Florida events:"
  when "3"
    puts "Georgia events:"
  end
end

def get_events
  puts <<-EVENTS.gsub /^\s+/, ""
  1.
  EVENTS
end

end
