class FindDanceEvents::CLI

  def call
    puts "Welcome to Find Dance Events!"
    puts "Here are a list of states holding upcoming events:"
    list_states
    menu
  end

  def list_states
    @states = FindDanceEvents::Location.all
  end

def menu
  input = nil
  while input != "exit"
    puts "Which state would you like to see dance events from? To see the list of states again type list, to exit the program type exit."
    input = gets.strip.downcase
    case input
      when "1"
        puts "Alabama events:"
        list_events
      when "2"
        puts "Florida events:"
        list_events
      when "3"
        puts "Georgia events:"
        list_events
      when "list"
        list_states
      when "exit"
        puts "Happy Dancing!"
      else
        puts "Sorry, I don't understand."
    end
  end
end

def list_events
  puts <<-EVENTS
  1. Bal-Ast Off
  2. Huntington Beach Bal
  EVENTS
end

end
