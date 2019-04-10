class Car

  attr_reader :make, :model, :car_owner, :mechanic

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

#Get a list of all cars
  def self.all
    @@all
  end
#Get a list of all car classifications
  def self.classifications
    self.all do |car|
      car.classification == self
    end
  end
end
