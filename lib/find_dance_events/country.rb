class FindDanceEvents::Country
  attr_accessor :name, :events

  @@all = []

  def initialize(name)
    @events = []
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_event(event)
    @events << event
    event.country = self
  end

  def self.find_by_name(name)
    self.all.detect {|country| country.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) ? self.find_by_name(name) : self.new(name)
  end

end
