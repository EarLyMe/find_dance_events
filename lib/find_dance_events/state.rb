class FindDanceEvents::State
  attr_accessor :name

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  location_1 = self.new
  location_1.name = "Alabama"

  location_2 = self.new
  location_2.name = "Florida"

  location_3 = self.new
  location_3.name = "Georgia"
end
