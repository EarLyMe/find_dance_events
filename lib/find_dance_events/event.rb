class FindDanceEvents::Event
  attr_accessor :name, :location, :country, :date, :dance, :desc

  @@all = []

  def initialize(event_hash)
    event_hash.each do |attribute, value|
      self.send("#{attribute}=", value)
    end
    @@all << self
  end

  def self.all
    @@all
  end

end
