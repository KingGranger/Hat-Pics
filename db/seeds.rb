# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lina = User.create(username: 'lina')
james = User.create(username: 'james')
brandon = User.create(username: 'brandon')
hat1 = HatPic.create(uploader: lina, color: 'red')
hat2 = HatPic.create(uploader: james, color: 'orange')
Rating.create(rater:lina, hat_pic: hat1, score: 5)
Rating.create(rater:james, hat_pic: hat2, score: 3)
