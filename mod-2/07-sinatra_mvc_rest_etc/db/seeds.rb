require "faker"

Character.destroy_all

num = 50

num.times do
  Character.create(
    name: Faker::Games::ElderScrolls.name,
    race: Faker::Games::ElderScrolls.race,
  )
end
