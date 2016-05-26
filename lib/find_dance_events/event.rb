class FindDanceEvents::Event
  attr_accessor :name, :location, :country, :date, :dance, :desc

  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    self.all.detect {|event| event.name == name}
  end

end
