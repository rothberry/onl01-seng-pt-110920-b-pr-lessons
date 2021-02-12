require "faker"

Character.destroy_all
# @character.destroy
Weapon.destroy_all

num = 50

(num / 2).times do
  Character.create(
    name: Faker::Games::ElderScrolls.name,
    race: Faker::Games::ElderScrolls.race,
  )
end

num.times do
  Weapon.create(
    name: Faker::Games::Zelda.item,
    type: Faker::Games::Heroes.specialty,
    character_id: rand(1..25),
  )
end
