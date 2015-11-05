# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new({
  username:   "Joanne",
  email:      "jh@example.com",
  admin:      true,
  address:    "33 Leroy Drive, Riverside, RI 02915",
  latitude:
  longitude:
  })
  user.password = "password"
  user.save!

user = User.new({
  username:   "Jayson",
  email:      "jd@example.com",
  admin:      false,
  address:    "337 Maple Street, New Bedford, MA 02740"
  latitude:
  longitude:
  })
  user.password = "password"
  user.save!

user = User.new({
  username:   "Annika",
  email:      "ayd@example.com",
  admin:      true,
  address:    "164 Angell Street, Providence, RI 02912"
  latitude:
  longitude:
  })
  user.password = "password"
  user.save!

Source.create({
  name:       "unknown",
  date:       Faker::Date.between(2.years.ago, Date.today),
  address:    Faker::Address.street_address << " Taunton, MA, 02780",
  type_of:    "Yard Sale",
  user_id:    2,
  latitude:
  longitude:
  })

Source.create({
  name:       "Betty Sue Filmore",
  date:       Faker::Date.between(2.years.ago, Date.today),
  address:    Faker::Address.street_address << " Taunton, MA, 02780",
  type_of:    "Estate Sale",
  user_id:    2,
  latitude:
  longitude:
  })

Source.create({
  name:       "Jim's Gems",
  date:       Faker::Date.between(2.years.ago, Date.today),
  address:    Faker::Address.street_address << " Boston, MA, 02108",
  type_of:    "Flea Market",
  user_id:    1,
  latitude:
  longitude:
  })

Source.create({
  name:       "Pete",
  date:       Faker::Date.between(2.years.ago, Date.today),
  address:    "unknown",
  type_of:    "Craigslist",
  user_id:    1,
  latitude:
  longitude:
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

status        = ["ready for sale", "listed", "sold", "in storage"]
condition     = ["good", "fair", "damaged", "new", "excellent"]
source        = [1,2,3,4]
procure_cost  = [12,45,67,9,13,82,7,1,4,10]
pre_sale_cost = [1,0.50,2,0.75,10,5,3,20]
storage_loc   = ["attic 5", "garage 4", "shed 1", "master 12", "closet 6"]
shipping      = ["free", "buyer", "pick up"]
qty           = [1,2]



item = Item.create({
  description:  "green velvet couch",
  category_id:  1,
  subcat1_id:   4,
  subcat2_id:   27,
  storage_loc:  storage_loc.sample,
  status:       status.sample,
  condition:    condition.sample,
  shipping:     shipping.sample,
  quantity:     qty.sample,
  source_id:    source.sample
})
item.finances.create({
  procure_cost:   procure_cost.sample,
  pre_sale_cost:  pre_sale_cost.sample,
  pre_sale_notes: "repair ripped seam on 3rd cushion"})

item1 = Item.create({
  description:  "knit pants women's size 4 green elastic waist",
  category_id:  2,
  subcat1_id:   6,
  subcat2_id:   28,
  status:       status.sample,
  condition:    condition.sample,
  source_id:    source.sample,
  storage_loc:  storage_loc.sample,
  shipping:     shipping.sample,
  quantity:     qty.sample
})
item1.finances.create({
  procure_cost:   procure_cost.sample,
  pre_sale_cost:  pre_sale_cost.sample,
  shipping_cost: 0,
  pre_sale_notes: "fix button"})

item2 = Item.create({
  description:  "floor lamp halogen no bulb black and gold",
  category_id:  3,
  subcat1_id:   13,
  subcat2_id:   65,
  status:       status.sample,
  condition:    condition.sample,
  source_id:    source.sample,
  storage_loc:  storage_loc.sample,
  shipping:     shipping.sample,
  quantity:     qty.sample
})
item2.finances.create({
  procure_cost:   procure_cost.sample,
  pre_sale_cost:  pre_sale_cost.sample,
  shipping_cost: 0,
  pre_sale_notes: "replace bulb"})

item3 = Item.create({
  description:  'wig blonde 15" curly',
  category_id:  4,
  subcat1_id:   21,
  subcat2_id:   105,
  status:       status.sample,
  condition:    condition.sample,
  source_id:    source.sample,
  storage_loc:  storage_loc.sample,
  shipping:     shipping.sample,
  quantity:     qty.sample
})
item3.finances.create({
  procure_cost:   procure_cost.sample,
  pre_sale_cost:  pre_sale_cost.sample,
  shipping_cost: 0,
  pre_sale_notes: "brush before display"})

  item4 = Item.create({
    description:  'wig blonde 15" curly',
    category_id:  4,
    subcat1_id:   21,
    subcat2_id:   105,
    status:       status.sample,
    condition:    condition.sample,
    source_id:    source.sample,
    storage_loc:  storage_loc.sample,
    shipping:     shipping.sample,
    quantity:     qty.sample
  })
  item4.finances.create({
    procure_cost:   procure_cost.sample,
    pre_sale_cost:  pre_sale_cost.sample,
    shipping_cost: 0,
    pre_sale_notes: "brush before display"})

item5 = Item.create({
  description:  'bookcase oak veneer ikea 4 shelf',
  category_id:  1,
  subcat1_id:   4,
  subcat2_id:   17,
  status:       status.sample,
  condition:    condition.sample,
  source_id:    source.sample,
  storage_loc:  storage_loc.sample,
  shipping:     shipping.sample,
  quantity:     qty.sample
})
item5.finances.create({
  procure_cost:   procure_cost.sample,
  pre_sale_cost:  pre_sale_cost.sample,
  shipping_cost: 0,
  pre_sale_notes: ""})

item6 = Item.create({
  description:  'costume darth vader black mens size small',
  category_id:  2,
  subcat1_id:   7,
  subcat2_id:   32,
  status:       status.sample,
  condition:    condition.sample,
  source_id:    source.sample,
  storage_loc:  storage_loc.sample,
  shipping:     shipping.sample,
  quantity:     qty.sample
})
item6.finances.create({
  procure_cost:   procure_cost.sample,
  pre_sale_cost:  pre_sale_cost.sample,
  shipping_cost: 0,
  pre_sale_notes: "dry clean first"})

item7 = Item.create({
  description:  'flute silver 1957 culver',
  category_id:  4,
  subcat1_id:   20,
  subcat2_id:   100,
  status:       status.sample,
  condition:    condition.sample,
  source_id:    source.sample,
  storage_loc:  storage_loc.sample,
  shipping:     shipping.sample,
  quantity:     qty.sample
})
item7.finances.create({
  procure_cost:   procure_cost.sample,
  pre_sale_cost:  pre_sale_cost.sample,
  shipping_cost: 0,
  pre_sale_notes: "polish first"})
