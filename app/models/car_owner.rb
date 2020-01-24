class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_owned
    Car.all.select { |car| car.car_owner == self }
  end

  def mechanics
    cars_owned.map { |cars| cars.mechanic }.uniq
  end

  def self.avg_cars_owned
    Car.all.count.to_f / self.all.count
  end

end
