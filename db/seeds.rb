puts "🌱 Seeding spices..."

Owner.create(name: "Mark Momot")

Car.create(year: "2014", make: "Honda", model: "Accord", owner_id: 1)
Car.create(year: "2007", make: "Infiniti", model: "G35", owner_id: 1)

Repair.create(name: "Air conditioning replacement", price: 957.51, car_id: 1, miliage: 67541)
Repair.create(name: "Coolant reservoir replacement", price: 19.99, car_id: 1, miliage: 67578)
Repair.create(name: "Starter replacement", price: 271.58, car_id: 1, miliage: 71254)
Repair.create(name: "Fender replacement/repaint", price: 330, car_id: 1, miliage: 78514)

Repair.create(name: "Power steering leak", price: 292.64, car_id: 2, miliage: 131521)
Repair.create(name: "Clutch replacment", price: 987.34, car_id: 2, miliage: 123454)

puts "✅ Done seeding!"
