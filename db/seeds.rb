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
hat1 = Hat.find_or_create_by(user: lina, color: 'red')
hat2 = Hat.find_or_create_by(user: james, color: 'purple')
hatpic1 = HatPic.find_or_create_by(hat: hat1)
hatpic2 = HatPic.find_or_create_by(hat: hat2)
Rating.find_or_create_by(user: lina, hat_pic: hatpic1, score: 5)
Rating.find_or_create_by(user: james, hat_pic: hatpic2, score: 3)

Comment.find_or_create_by(user: lina, hat_pic: hatpic2, content: 'cool hat!')