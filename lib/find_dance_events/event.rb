class FindDanceEvents::Event
  attr_accessor :name, :location, :country, :date, :dance, :desc

  @@all = []
=begin
  def create_event(event_hash)
    event_hash.each do |attribute, value|
      self.send("#{attribute}=", value)
    end
    @@all << self
  end
=end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.detect {|event| event.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) ? self.find_by_name(name) : self.create()
  end
end
