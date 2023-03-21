Fighter.delete_all
Power.delete_all

10.times do
  Fighter.create(name: Faker::Games::StreetFighter.character, health: Faker::Number.between(from: 500, to: 1000),
                 attack_power: Faker::Number.between(from: 1, to: 20), defense_power: Faker::Number.between(from: 1, to: 20))
end

5.times do
  Power.create(name: Faker::Games::StreetFighter.move, damage: Faker::Number.between(from: 1, to: 20),
               cooldown: Faker::Number.between(from: 5, to: 60))
end
