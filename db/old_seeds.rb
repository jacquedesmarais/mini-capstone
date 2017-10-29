# Supplier.create!([
#   {name: "Blob", email: "blob@gmail.com", phone: "123-456-7890"},
#   {name: "Shedd Aquarium", email: "fishies@shedd.org", phone: "123-456-7890"},
#   {name: "Georgia Aquarium", email: "whaleshark@georgiaaquarium.org", phone: "123-456-7899"},
#   {name: "Monteray Bay Aquarium", email: "westcoast@mba.com", phone: "123-456-7891"}
# ])

# Product.create!([
#   {name: "Seahorse", price: "30.0", description: "orange, small, cute", stock: nil, supplier_id: 2},
#   {name: "Beluga Whale", price: "7000000.0", description: "playful, giant puppies, tricks", stock: nil, supplier_id: 2},
#   {name: "Goldfish", price: "1.0", description: "gold, cheap, multicolored", stock: nil, supplier_id: 2},
#   {name: "Anchovies", price: "2.0", description: "delicious", stock: nil, supplier_id: 3},
#   {name: "Whale Shark", price: "92000000.0", description: "giant, calm, bottom-feeder", stock: nil, supplier_id: 2},
#   {name: "Sea Turtle", price: "34710.0", description: "Green, dude", stock: nil, supplier_id: 1},
#   {name: "Jellyfish", price: "4310.0", description: "squishy, soft, hurty", stock: nil, supplier_id: 3},
#   {name: "Octopus", price: "4000.99", description: "sucky, scary, very bottom of the ocean", stock: nil, supplier_id: 2},
#   {name: "Blue Tang", price: "700.9", description: "blue, flat, fast", stock: nil, supplier_id: 3}
# ])


# Image.create!([
#   {product_id: 1, url: "http://www.ccmnh.org/Images/cms/seahorse_4_CALENDAR.png?format=jpg&mode=max&scale=both&width=410"},
#   {product_id: 2, url: "http://www.georgiaaquarium.org/images/default-source/default-album/gaq-galleries-485ac23c413cabb6b4c8326ff00008b2be6.jpg?sfvrsn=1"},
#   {product_id: 3, url: "https://i.pinimg.com/736x/c3/96/d4/c396d4c57495616ca9bfa0a932b14bb1--pet-fish-fish-fish.jpg"},
#   {product_id: 4, url: "http://www.seriouseats.com/images/2015/07/20150706-anchovies-primary2.jpg"},
#   {product_id: 5, url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Whale_shark_Georgia_aquarium.jpg/1200px-Whale_shark_Georgia_aquarium.jpg"},
#   {product_id: 6, url: "http://turtlebackzoo.com/wp-content/uploads/2017/03/exhibit-headers_sea-turtles.jpg"},
#   {product_id: 7, url: "http://cdn.images.express.co.uk/img/dynamic/109/590x/JELLYFISH-786903.jpg"},
#   {product_id: 8, url: "https://i.ytimg.com/vi/epbJi35lzEs/maxresdefault.jpg"},
#   {product_id: 9, url: "http://3.bp.blogspot.com/-Z25Hb5Hp1eY/TsJFyhcn4XI/AAAAAAAACLg/NKgzeU75T3o/s1600/Blue+Tang5.jpg"}
# ])

# Image.create!(product_id: 1, url: "http://www.worldatlas.com/r/w728-h425-c728x425/upload/33/f8/84/shutterstock-140264863.jpg")

# Category.create!(name: "Small")
# Category.create!(name: "Large")
# Category.create!(name: "Slow")
# Category.create!(name: "Fast")
# Category.create!(name: "Bites")
# Category.create!(name: "Doesn't Bite")

# CategoryProduct.create!(product_id: 1, category_id: 1)
# CategoryProduct.create!(product_id: 1, category_id: 3)
# CategoryProduct.create!(product_id: 1, category_id: 6)
# CategoryProduct.create!(product_id: 2, category_id: 2)
# CategoryProduct.create!(product_id: 2, category_id: 3)
# CategoryProduct.create!(product_id: 3, category_id: 1)
# CategoryProduct.create!(product_id: 3, category_id: 3)
# CategoryProduct.create!(product_id: 3, category_id: 6)
# CategoryProduct.create!(product_id: 4, category_id: 1)
# CategoryProduct.create!(product_id: 5, category_id: 2)
# CategoryProduct.create!(product_id: 5, category_id: 6)
# CategoryProduct.create!(product_id: 6, category_id: 5)
# CategoryProduct.create!(product_id: 6, category_id: 4)
# CategoryProduct.create!(product_id: 7, category_id: 1)
# CategoryProduct.create!(product_id: 7, category_id: 5)
# CategoryProduct.create!(product_id: 8, category_id: 1)
# CategoryProduct.create!(product_id: 8, category_id: 4)
# CategoryProduct.create!(product_id: 9, category_id: 1)
# CategoryProduct.create!(product_id: 9, category_id: 4)

