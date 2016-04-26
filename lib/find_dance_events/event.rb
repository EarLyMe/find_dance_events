class FindDanceEvents::Event
  attr_accessor :name, :location, :state, :date, :type, :dance, :url

  @@all_events = []

  def initialize
    @@all_events << self
  end

  def self.all_events
    @@all_events
  end

  def self.get_events

  end

  def self.create_events

  end

  def find_by_state

  end
  
  event_1 = self.new
  event_1.name = "Bal-Ast Off"
  event_1.location = "Huntsville, Alabama"
  event_1.state = "Alabama"
  event_1.date = "Aug 5th - Aug 7th"
  event_1.type = "Workshop"
  event_1.dance = "Balboa"
  event_1.url = "http://www.balastoff.com/"

  event_2 = self.new
  event_2.name = "Lindy Hop on the Plains 4"
  event_2.location = "Auburn, Alabama"
  event_2.state = "Alabama"
  event_2.date = "Nov 11th"
  event_2.type = "Workshop"
  event_2.dance = "Lindy Hop"
  event_2.url = "https://lindyhopontheplains.com/"

end
