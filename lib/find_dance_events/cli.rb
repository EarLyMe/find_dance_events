class FindDanceEvents::CLI
  attr_reader :countries

  def call
    make_events
    puts "Welcome to Find Dance Events!"
    sleep(2)
    puts "Here are a list of countries holding upcoming events:"
    sleep(2)
    list_countries
    menu
  end

  def make_events
    FindDanceEvents::Scraper.scrape_dancecal
  end

  def countries
    @countries = FindDanceEvents::Country.all
  end

  def list_countries
    self.countries.each.with_index(1) do |country, index|
      puts "  #{index}. #{country.name}"
    end
    puts "Which country would you like to see dance events from? To see the list of countries again type list, to exit the program type exit."
  end

  def menu
    input = nil

    while input != "exit"
      input = gets.strip.downcase

      if input == "list"
        list_countries
      elsif input == "exit"
          puts "Happy Dancing!"
          exit
      elsif input.to_i > 0 && input.to_i <= self.countries.count
          country = self.countries[input.to_i-1]
          puts "Events in #{country.name}:"
          list_country_events(country)
          puts " "
          country_event_menu(country)
      else
          puts "Sorry, please enter the number for a country or enter list to see the countries again."
      end
    end
  end

  def list_country_events(country)
    country.events.each.with_index(1) do |event, index|
      puts "  #{index}. #{event.name}"
      puts "      #{event.date} in #{event.location}"
    end
  end

  def country_event_menu(country)
    puts "If you would like to see more information on a specific event, enter that event number, otherwise enter list to see the list of countries again or exit."

    input = gets.strip.downcase

    if input.to_i > 0 && input.to_i <= country.events.count
      more_info(country, input.to_i)
      puts "Which country would you like to see dance events from? To see the list of countries again type list, to exit the program type exit."
    elsif input == "exit"
      puts "Happy Dancing!"
      exit
    elsif input == "list"
      list_countries
      menu
    else
      puts "Sorry, type list to see the list of countries again or exit."
      menu
    end

  end

  def more_info(country, input)
    puts " "
    puts "#{country.events[input-1].name} in #{country.events[input-1].location}:"
    puts "------------------------------------------------------"
    puts "Starts on #{country.events[input-1].date}"
    puts "#{country.events[input-1].dance}"
    puts " "
    puts "#{country.events[input-1].desc}"
    puts " "
  end

end
