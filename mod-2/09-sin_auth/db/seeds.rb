# First we want to wipe our database
User.destroy_all
Character.destroy_all

# Then we create
num_users = 10
num_chars = 30
begin
  num_users.times do
    user_params = {
      email: Faker::Internet.email,
      password: "123",
    }
    User.create(user_params)
  end

  num_chars.times do
    # sample a random User, and create the character through that
    user = User.all.sample

    params = {
      name: Faker::Name.name,
      weapon: Faker::Games::ElderScrolls.dragon,
    # user_id: rand(1..num_users),
    }
    user.characters.create(params)
  end
  # Console Message
  puts "SEEDED"
rescue
  puts "NOT SEEDED"
end
