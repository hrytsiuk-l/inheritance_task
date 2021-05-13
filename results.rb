require './transportation.rb'
require './air.rb'
require './auto.rb'
require './railway.rb'
require './sea.rb'

sea1 = Sea.new("Lviv", "Lutsk", 140, 130, 80)
sea2 = Sea.new("Lviv", "Stryi", 100, 110, 60)
sea3 = Sea.new("Lviv", "Sambyr", 75, 90, 60)
sea4 = Sea.new("Lviv", "Belz", 70, 80, 50)

railway1 = Railway.new("Kovel", "Kiev", 500, 300, 50)
railway2 = Railway.new("lviv", "Kiev", 550, 350, 50)
railway3 = Railway.new("Kovel", "Socal", 120, 100, 40)
railway4 = Railway.new("Socal", "Lviv", 85, 75, 30)

air1 = Air.new("Kiev", "Odessa", 470, 400, 100)
air2 = Air.new("Kiev", "Lviv", 540, 550, 140)
air3 = Air.new("Kiev", "Dnipro", 480, 450, 120)
air4 = Air.new("Kiev", "Kharkiv", 520, 500, 130)

auto1 = Auto.new("lviv", "Dnipro", 1000, 600, 40)
auto2 = Auto.new("lviv", "Odesa", 790, 500, 30)
auto3 = Auto.new("Lviv", "Kharkiv", 1020, 700, 50)
auto4 = Auto.new("Kiev", "Lutsk", 400, 330, 20)

puts Sea.general_info
puts Railway.general_info
puts Air.general_info
puts Auto.general_info

puts Transportation.count
