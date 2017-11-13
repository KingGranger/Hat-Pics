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
hat1 = Hat.create(user: lina, name: "super dope hat", description: "This hat is doper than the dopest dope you ever seen")
hat2 = Hat.create(user: lina, name: "regular hat", description: "Kinda boring")
hat3 = Hat.create(user: lina, name: "", description: "")
hat4 = Hat.create(user: james, name: "dope", description: "This hat is about as dope as dope")
hat5 = Hat.create(user: james, name: "", description: "")

file1 = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', 'hat.jpg'))
file2 = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', ''))
file3 = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', ''))
file4 = File.new(File.join(Rails.root, 'app', 'assets', 'images', 'seed', ''))

hatpic2 = HatPic.create(hat: hat2, avatar: file2)
hatpic1 = HatPic.create(hat: hat1, avatar: file1)


Rating.find_or_create_by(user: lina, hat_pic: hatpic1, score: 5)
Rating.find_or_create_by(user: james, hat_pic: hatpic2, score: 3)

Comment.find_or_create_by(user: lina, hat_pic: hatpic2, content: 'cool hat!')
