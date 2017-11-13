# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lina = User.find_or_create_by(username: 'lina')
james = User.find_or_create_by(username: 'james')
brandon = User.find_or_create_by(username: 'brandon')
hat1 = HatPic.find_or_create_by(uploader: lina, color: 'red')
hat2 = HatPic.find_or_create_by(uploader: james, color: 'orange')
Rating.find_or_create_by(rater:lina, hat_pic: hat1, score: 5)
Rating.find_or_create_by(rater:james, hat_pic: hat2, score: 3)

Comment.find_or_create_by(commenter: lina, hat_pic: hat2, content: 'cool hat!')
