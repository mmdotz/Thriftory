# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new({
  username:   "Jay",
  email:      "jd@example.com",
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

Subcat1.create({ name: "Table", category_id: 1})
Subcat1.create({ name: "Seating", category_id: 1})
Subcat1.create({ name: "Bedroom", category_id: 1})
Subcat1.create({ name: "Storage", category_id: 1})
Subcat1.create({ name: "Tops", category_id: 2})
Subcat1.create({ name: "Bottoms", category_id: 2})
Subcat1.create({ name: "Occasion", category_id: 2})
Subcat1.create({ name: "Shoes", category_id: 2})
Subcat1.create({ name: "Outerwear", category_id: 2})
Subcat1.create({ name: "Decorations", category_id: 3})
Subcat1.create({ name: "Kitchen", category_id: 3})
Subcat1.create({ name: "Smalls", category_id: 3})
Subcat1.create({ name: "Lighting", category_id: 3})
Subcat1.create({ name: "Linens", category_id: 3})
Subcat1.create({ name: "Toys & Hobbies", category_id: 4})
Subcat1.create({ name: "Collectibles", category_id: 4})
Subcat1.create({ name: "Books", category_id: 4})
Subcat1.create({ name: "Jewelry", category_id: 4})
Subcat1.create({ name: "Computer & Electronic", category_id: 4})
Subcat1.create({ name: "Music & Video", category_id: 4})
Subcat1.create({ name: "Accessories", category_id: 4})


Subcat2.create({ name: "Dining", subcat1_id: 1})
Subcat2.create({ name: "Game", subcat1_id: 1})
Subcat2.create({ name: "Desk/Work", subcat1_id: 1})
Subcat2.create({ name: "Game", subcat1_id: 1})
Subcat2.create({ name: "Media", subcat1_id: 1})

Subcat2.create({ name: "Sofa", subcat1_id: 2})
Subcat2.create({ name: "Side Chair", subcat1_id: 2})
Subcat2.create({ name: "Stool", subcat1_id: 2})
Subcat2.create({ name: "Dining Chair", subcat1_id: 2})
Subcat2.create({ name: "Other", subcat1_id: 2})

Subcat2.create({ name: "Bed framing", subcat1_id: 3})
Subcat2.create({ name: "Nightstand", subcat1_id: 3})
Subcat2.create({ name: "Bureau", subcat1_id: 3})
Subcat2.create({ name: "Chest of drawers", subcat1_id: 3})

Subcat2.create({ name: "File Cabinet", subcat1_id: 4})
Subcat2.create({ name: "Bureau", subcat1_id: 4})
Subcat2.create({ name: "Bookcase", subcat1_id: 4})
Subcat2.create({ name: "Chest", subcat1_id: 4})
Subcat2.create({ name: "Armoire", subcat1_id: 4})

Subcat2.create({ name: "Button-Down", subcat1_id: 5})
Subcat2.create({ name: "Sweater", subcat1_id: 5})
Subcat2.create({ name: "Blouse", subcat1_id: 5})
Subcat2.create({ name: "T-Shirt/Other", subcat1_id: 5})
Subcat2.create({ name: "Tank", subcat1_id: 5})
Subcat2.create({ name: "Dress", subcat1_id: 5})


Subcat2.create({ name: "Jeans", subcat1_id: 6})
Subcat2.create({ name: "Skirt", subcat1_id: 6})
Subcat2.create({ name: "Knit pants", subcat1_id: 6})
Subcat2.create({ name: "Chinos", subcat1_id: 6})
Subcat2.create({ name: "Capris", subcat1_id: 6})

Subcat2.create({ name: "Formal", subcat1_id: 7})
Subcat2.create({ name: "Costume", subcat1_id: 7})
Subcat2.create({ name: "Uniform", subcat1_id: 7})
Subcat2.create({ name: "Thermals", subcat1_id: 7})
Subcat2.create({ name: "Suit", subcat1_id: 7})

Subcat2.create({ name: "Athletic", subcat1_id: 8})
Subcat2.create({ name: "Boot", subcat1_id: 8})
Subcat2.create({ name: "Sandals & Flip Flops", subcat1_id: 8})
Subcat2.create({ name: "Occupational", subcat1_id: 8})
Subcat2.create({ name: "Dress", subcat1_id: 8})
Subcat2.create({ name: "Casual", subcat1_id: 8})

Subcat2.create({ name: "Gloves/Hat/Scarves", subcat1_id: 9})
Subcat2.create({ name: "Jacket", subcat1_id: 9})
Subcat2.create({ name: "Overcoat", subcat1_id: 9})
Subcat2.create({ name: "Outer: Pants", subcat1_id: 9})
Subcat2.create({ name: "Vest", subcat1_id: 9})

Subcat2.create({ name: "Occasion", subcat1_id: 10})
Subcat2.create({ name: "Rug", subcat1_id: 10})
Subcat2.create({ name: "Art", subcat1_id: 10})
Subcat2.create({ name: "Christmas & Holiday", subcat1_id: 10})

Subcat2.create({ name: "Utencil", subcat1_id: 11})
Subcat2.create({ name: "Small appliance", subcat1_id: 11})
Subcat2.create({ name: "Serving", subcat1_id: 11})
Subcat2.create({ name: "Tabletop", subcat1_id: 11})

Subcat2.create({ name: "Vases", subcat1_id: 12})
Subcat2.create({ name: "Clocks", subcat1_id: 12})
Subcat2.create({ name: "Bric-a-Brac", subcat1_id: 12})
Subcat2.create({ name: "Frames", subcat1_id: 12})
Subcat2.create({ name: "Candleware", subcat1_id: 12})
Subcat2.create({ name: "Trays/Baskets", subcat1_id: 12})

Subcat2.create({ name: "Hanging", subcat1_id: 13})
Subcat2.create({ name: "Wall", subcat1_id: 13})
Subcat2.create({ name: "Outdoor & Accent", subcat1_id: 13})
Subcat2.create({ name: "Tabletop", subcat1_id: 13})
Subcat2.create({ name: "Floor", subcat1_id: 13})

Subcat2.create({ name: "Bedroom", subcat1_id: 14})
Subcat2.create({ name: "Bath", subcat1_id: 14})
Subcat2.create({ name: "Dining", subcat1_id: 14})
Subcat2.create({ name: "Window", subcat1_id: 14})
Subcat2.create({ name: "Pillow", subcat1_id: 14})

Subcat2.create({ name: "Baby", subcat1_id: 15})
Subcat2.create({ name: "Games", subcat1_id: 15})
Subcat2.create({ name: "Models", subcat1_id: 15})
Subcat2.create({ name: "Building", subcat1_id: 15})
Subcat2.create({ name: "Vehicles", subcat1_id: 15})
Subcat2.create({ name: "Figures", subcat1_id: 15})

Subcat2.create({ name: "Stamps/Cards/Coins", subcat1_id: 16})
Subcat2.create({ name: "Glass", subcat1_id: 16})
Subcat2.create({ name: "Print", subcat1_id: 16})
Subcat2.create({ name: "Sports", subcat1_id: 16})
Subcat2.create({ name: "Souvenir", subcat1_id: 16})

Subcat2.create({ name: "Vintage", subcat1_id: 17})
Subcat2.create({ name: "Childrens'", subcat1_id: 17})
Subcat2.create({ name: "Cookbook", subcat1_id: 17})
Subcat2.create({ name: "TextBook/Ed", subcat1_id: 17})
Subcat2.create({ name: "Audio", subcat1_id: 17})

Subcat2.create({ name: "Fine", subcat1_id: 18})
Subcat2.create({ name: "Costume", subcat1_id: 18})
Subcat2.create({ name: "Childrens", subcat1_id: 18})
Subcat2.create({ name: "Parts", subcat1_id: 18})
Subcat2.create({ name: "Watches", subcat1_id: 18})

Subcat2.create({ name: "Gaming", subcat1_id: 19})
Subcat2.create({ name: "Mobile Computing & Phone", subcat1_id: 19})
Subcat2.create({ name: "Home Computing & Accessories", subcat1_id: 19})
Subcat2.create({ name: "Home Video & Audio", subcat1_id: 19})
Subcat2.create({ name: "Mobile Video & Audio", subcat1_id: 19})
Subcat2.create({ name: "Gadgets & Software", subcat1_id: 19})

Subcat2.create({ name: "CD", subcat1_id: 20})
Subcat2.create({ name: "DVD", subcat1_id: 20})
Subcat2.create({ name: "Instruments", subcat1_id: 20})
Subcat2.create({ name: "Record & Amplify", subcat1_id: 20})

Subcat2.create({ name: "Belts", subcat1_id: 21})
Subcat2.create({ name: "Glasses & Shades", subcat1_id: 21})
Subcat2.create({ name: "Hair", subcat1_id: 21})
Subcat2.create({ name: "Hats & Wigs", subcat1_id: 21})
Subcat2.create({ name: "Umbrella", subcat1_id: 21})
Subcat2.create({ name: "Ties", subcat1_id: 21})
