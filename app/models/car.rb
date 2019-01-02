class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classification
    self.all.map { |car| car.classification }
  end

  def self.mechanics(classify)
    self.all.select { |car| car.classification == classify }.map { |car| car.mechanic }
  end

end
