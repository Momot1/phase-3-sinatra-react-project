puts "🌱 Seeding spices..."

Car.create(year: "2014", make: "Honda", model: "Accord", user_id: 1)
Car.create(year: "2007", make: "Infiniti", model: "G35", user_id: 1)

Repair.create(name: "Air conditioning replacement", price: 957.51, car_id: 1, miliage: 67541)
Repair.create(name: "Coolant reservoir replacement", price: 19.99, car_id: 1, miliage: 67578)
Repair.create(name: "Starter replacement", price: 271.58, car_id: 1, miliage: 71254)
Repair.create(name: "Fender replacement/repaint", price: 330, car_id: 1, miliage: 78514)

Repair.create(name: "Power steering leak", price: 292.64, car_id: 2, miliage: 131521)
Repair.create(name: "Clutch replacment", price: 987.34, car_id: 2, miliage: 123454)

User.create(username: "momot", email: "markmomot03@gmail.com", password: "admin", group: "admin", first_name: "Mark", last_name: "Momot", birthday: "08-21-2000")

puts "✅ Done seeding!"
