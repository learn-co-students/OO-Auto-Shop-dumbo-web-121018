require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kah = CarOwner.new("Kah")
sion = CarOwner.new("Sion")
corki = CarOwner.new("Corki")

brigitte = Mechanic.new("Brigitte", "Exotic")
paige = Mechanic.new("Paige", "Clunker")
ziggs = Mechanic.new("Ziggs", "Antique")

car1 = Car.new("car", "new", "Exotic", kah, brigitte)
car2 = Car.new("car", "new", "Clunker", kah, paige)
car3 = Car.new("car", "old", "Antique", sion, ziggs)
car4 = Car.new("UFO", "old", "Antique", corki, ziggs)


binding.pry
