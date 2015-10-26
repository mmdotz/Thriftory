# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Source.create({
  name:     "unknown",
  date:     Faker::Date.between(2.years.ago, Date.today),
  address:  Faker::Address.street_address << " Taunton, MA, " << Faker::Address.zip,
  type:     "Yard Sale"
  }),

Source.create({
  name:     "Betty Sue Filmore",
  date:     Faker::Date.between(2.years.ago, Date.today),
  address:  Faker::Address.street_address << " Taunton, MA, " << Faker::Address.zip,
  type:     "Estate Sale"
  }),

Source.create({
  name:     "Jim's Gems",
  date:     Faker::Date.between(2.years.ago, Date.today),
  address:  Faker::Address.street_address << " Boston, MA, " << Faker::Address.zip,
  type:     "Flea Market"
  }),

Source.create({
  name:     "Pete",
  date:     Faker::Date.between(2.years.ago, Date.today),
  address:  "unknown",
  type:     "Craigslist"
  })



Item.create({
  category:     1,
  subcat1:      1,
  subcat2:      1,
  description:  "Sofa with pullout, green, pillows"
  quantity:     1,
  shipping:     "buyer",
  storage_loc:  "garage 35",
  status:       "stored",
  condition:    "broken",
  photo:        "/app/assets/images/IMG_108.jpg"
  source_id:    1
  })
