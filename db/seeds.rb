  #def password(new_password)
    #salt = BCrypt::Engine::generate_salt
    #hashed = BCrypt::Engine::hash_secret(new_password, salt)
    #salt + hashed
  #end

User.destroy_all
Hat.destroy_all
HatPic.destroy_all
Rating.destroy_all
Comment.destroy_all

lina = User.create(username: 'lina', email: "lina@gmail.com", password: "123")
james = User.create(username: 'james', email: "james@gmail.com", password: "123")
brandon = User.create(username: 'brandon', email: "brandon@gmail.com" , password: "123")
dick = User.create(username: 'Dick', email: 'dick@gmail.com', password: '123')
diego = User.create(username: 'Diego', email: 'diego@gmail.com', password: '123')
genevieve = User.create(username: 'Genevieve', email: 'genevieve@gmail.com', password: '123')
liam = User.create(username: 'Liam', email: 'liam@gmail.com', password: '123')

hat_test = Hat.create(user: lina, name: "super dope hat", description: "This hat is doper than the dopest dope you ever seen")
red_hat = Hat.create(user: lina, name: "regular hat", description: "Kinda boring")
dick_bag = Hat.create(user: dick, name: "Bag Hat", description: "Hat is so great that it covers my face")
dick_blue_dragon = Hat.create(user: dick, name: "Pirate", description: "This hat is about as dope as dope")
dick_crown = Hat.create(user: dick, name: "The King", description: "Bringme back to the time when I was the ruler of many lands")
diego_hat_on_tv = Hat.create(user: diego, name: "Swag Master", description: "Kinda awesome")
diego_on_the_phone = Hat.create(user: diego, name: "Swag Master", description: "This is the pose that got me all the girs in college")
genevieve_boob_hat = Hat.create(user: genevieve, name: "Boob Hat", description: "This is me")
liam_hat_on_tv = Hat.create(user: liam, name: "Causal Tuesday", description: "I thought the tv might be cold with all of the dropping weather temperatures")


hat_test_pic = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', 'hat.jpg'))
red_hat_pic = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', 'red_hat.png'))
dick_bag_pic = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', 'dick_bag.png'))
dick_blue_dragon_pic = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', 'dick_blue_dragon.png'))
dick_crown_pic = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', 'dick_crown.png'))
diego_hat_on_tv_pic = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', 'diego_hat_on_tv.jpg'))
diego_on_the_phone_pic = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', 'diego_on_the_phone.jpg'))
genevieve_boob_hat_pic = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', 'genevieve_boob_hat.jpg'))
liam_hat_on_tv_pic = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', 'liam_hat_on_tv.jpg'))

lina_hat_pic1 = HatPic.create(hat: hat_test, avatar: hat_test_pic)
lina_hat_pic2 = HatPic.create(hat: red_hat, avatar: red_hat_pic)
dick_hat_pic1 = HatPic.create(hat: dick_bag, avatar: dick_bag_pic)
dick_hat_pic2 = HatPic.create(hat: dick_blue_dragon, avatar: dick_blue_dragon_pic)
dick_hat_pic3 = HatPic.create(hat: dick_crown, avatar: dick_crown_pic)
diego_hat_pic1 = HatPic.create(hat: diego_on_the_phone, avatar: diego_on_the_phone_pic)
diego_hat_pic2 = HatPic.create(hat: diego_hat_on_tv, avatar: diego_hat_on_tv_pic)
genevieve_hat_pic1 = HatPic.create(hat: genevieve_boob_hat, avatar: genevieve_boob_hat_pic)
liam_hat_pic1 = HatPic.create(hat: liam_hat_on_tv, avatar: liam_hat_on_tv_pic)



Rating.find_or_create_by(user: lina, hat_pic: lina_hat_pic1, score: 9)
Rating.find_or_create_by(user: lina, hat_pic: lina_hat_pic2, score: 10)
Rating.find_or_create_by(user: dick, hat_pic: dick_hat_pic1, score: 6)
Rating.find_or_create_by(user: dick, hat_pic: dick_hat_pic2, score: 9)
Rating.find_or_create_by(user: dick, hat_pic: dick_hat_pic3, score: 10)
Rating.find_or_create_by(user: diego, hat_pic: diego_hat_pic1, score: 7)
Rating.find_or_create_by(user: diego, hat_pic: diego_hat_pic2, score: 9)
Rating.find_or_create_by(user: genevieve, hat_pic: genevieve_hat_pic1, score: 8)
Rating.find_or_create_by(user: liam, hat_pic: liam_hat_pic1, score: 10)



Comment.find_or_create_by(user: lina, hat_pic: lina_hat_pic1, content: 'cool hat')
Comment.find_or_create_by(user: lina, hat_pic: lina_hat_pic2, content: 'jealous of your hat')
Comment.find_or_create_by(user: dick, hat_pic: dick_hat_pic1, content: 'what a nice hat')
Comment.find_or_create_by(user: dick, hat_pic: dick_hat_pic2, content: 'I want your hat')
Comment.find_or_create_by(user: dick, hat_pic: dick_hat_pic3, content: 'King Dick!')
Comment.find_or_create_by(user: diego, hat_pic: diego_hat_pic1, content: 'look how cool you are')
Comment.find_or_create_by(user: diego, hat_pic: diego_hat_pic2, content: 'damn dude, that swag')
Comment.find_or_create_by(user: genevieve, hat_pic: genevieve_hat_pic1, content: 'lol')
Comment.find_or_create_by(user: liam, hat_pic: liam_hat_pic1, content: 'killin it!')
