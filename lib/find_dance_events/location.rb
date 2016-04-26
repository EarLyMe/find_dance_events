class FindDanceEvents::Location
  attr_accessor :name

  @@all = []

  def initialize
    @@all << self
  end

  def all
    @@all
  end

location_1 = Location.new
location_1.name = "Alabama"

location_2 = Location.new
location_2.name = "Florida"

location_3 = Location.new
location_3.name = "Georgia"
end
