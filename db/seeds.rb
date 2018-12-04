# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jacket = Category.new( name: "jacket");

item1 = Item.new(name: "Puffer Jacket from Mom", image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/pink-corduroy-puffer-1537884978.jpg?crop=1xw:1xh;center,top&resize=480:*", times_worn: 0, category: jacket )

Item.create!([
  {
    name: "Puffer Jacket from Mom",
     image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/pink-corduroy-puffer-1537884978.jpg?crop=1xw:1xh;center,top&resize=480:*",
      times_worn: 0,
       category: jacket
  }
])
# {
#   "items": [
#     {
#       "id": 1,
#       "name": "Balenciaga Sock Sneakers",
#       "image": "https://cdn-images.farfetch-contents.com/12/53/88/30/12538830_13177068_322.jpg",
#       "times_worn": 5
#     },
#     {
#       "id": 2,
#       "name": "Everlane Cashmere Sweater",
#       "image": "https://res.cloudinary.com/everlane/image/upload/c_fill,dpr_1.5,f_jpg,h_1200,q_85,w_1200/v1/i/833e93b7_9022.jpg",
#       "times_worn": 13
#     },
#     {
#       "id": 3,
#       "name": "GUCCI Loafers",
#       "image": "https://media.gucci.com/style/White_South_0_160_316x316/1503909904/505281_D3V00_1000_002_095_0000_Light.jpg",
#       "times_worn": 5
#     },
#     {
#       "id": 4,
#       "name": "Everlane White Pants",
#       "image": "https://res.cloudinary.com/everlane/image/upload/c_fill,dpr_1.5,f_jpg,h_1200,q_85,w_1200/v1/i/f6417cf2_eed7.jpg",
#       "times_worn": 4
#     },
#     {
#       "id": 5,
#       "name": "Puffer Jacket from Mom",
#       "image": "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/pink-corduroy-puffer-1537884978.jpg?crop=1xw:1xh;center,top&resize=480:*",
#       "times_worn": 1
#     }
#   ]
# }