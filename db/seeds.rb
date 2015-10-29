# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new({
  username:   "Jayson",
  email:      "j@example.com",
  admin:      false
  })
  user.password = "password"
  user.save!

Source.create({
  name:       "unknown",
  date:       Faker::Date.between(2.years.ago, Date.today),
  address:    Faker::Address.street_address << " Taunton, MA, " << Faker::Address.zip,
  type_of:    "Yard Sale",
  user_id:    1
  })

Source.create({
  name:     "Betty Sue Filmore",
  date:     Faker::Date.between(2.years.ago, Date.today),
  address:  Faker::Address.street_address << " Taunton, MA, " << Faker::Address.zip,
  type_of:     "Estate Sale",
  user_id:    1
  })

Source.create({
  name:     "Jim's Gems",
  date:     Faker::Date.between(2.years.ago, Date.today),
  address:  Faker::Address.street_address << " Boston, MA, " << Faker::Address.zip,
  type_of:     "Flea Market",
  user_id:    1
  })

Source.create({
  name:     "Pete",
  date:     Faker::Date.between(2.years.ago, Date.today),
  address:  "unknown",
  type_of:     "Craigslist",
  user_id:    1
  })

Category.create({ name: "Furniture" })
Category.create({ name: "Clothing" })
Category.create({ name: "Household & Decor" })
Category.create({ name: "Other" })
