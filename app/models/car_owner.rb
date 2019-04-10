class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #Get a list of all owners
  def self.all
    @@all
  end

  #Get a list of all the cars that a specific owner has
  def cars
    Car.all.select do |car|
      car.car_owner == self
    end
  end
  #Get a list of all the mechanics that a specific owner goes to
  def mechanics
    cars.map do |car|
      car.mechanic
    end
  end

end
