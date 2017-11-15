

lina = User.find_or_create_by(username: 'lina', email: "hello", password_digest: "123")
james = User.find_or_create_by(username: 'james')
brandon = User.find_or_create_by(username: 'brandon')
hat1 = Hat.find_or_create_by(user: lina, color: 'red')
hat2 = Hat.find_or_create_by(user: james, color: 'purple')

file1 = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', 'hat.jpg'))



hatpic2 = HatPic.create(hat: hat2)

hatpic1 = HatPic.create(hat: hat1, avatar: file1)




Rating.find_or_create_by(user: lina, hat_pic: hatpic1, score: 5)
Rating.find_or_create_by(user: james, hat_pic: hatpic2, score: 3)

Comment.find_or_create_by(user: lina, hat_pic: hatpic2, content: 'cool hat!')
