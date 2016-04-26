class FindDanceEvents::CLI

  def call
    puts "Welcome to Find Dance Events!"
    puts "Here are a list of states holding upcoming events:"
    list_states
    state_menu
  end

  def list_states
    states = FindDanceEvents::State.all
    states.each.with_index(1) do |state, index|
      puts "  #{index}. #{state.name}"
    end
  end

  def state_menu
    input = nil

    puts "Which state would you like to see dance events from? To see the list of states again type list, to exit the program type exit."

    while input != "exit"
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
    events = FindDanceEvents::Event.all_events
    events.each.with_index(1) do |event, index|
      puts "  #{index}. #{event.name}"
      puts "     #{event.date} in #{event.location}"
    end
  end

  def more_info
    puts "About which event would you like to see more information?"
  end


end
