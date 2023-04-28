# Fighter.delete_all
# Power.delete_all
# Vocation.delete_all

Vocation.create(name: 'Sorcerer')

10.times do
  Fighter.create(
    name: Faker::Games::LeagueOfLegends.champion,
    health: Faker::Number.between(from: 500, to: 1000),
    vocation_id: 1
  )
end

15.times do
  Power.create(
    name: Faker::Games::StreetFighter.move,
    damage: Faker::Number.between(from: 250, to: 1000),
    cooldown: Faker::Number.between(from: 5, to: 60)
  )
end

poderes = Power.all

Fighter.all.each do |fighter|
  fighter.power_ids = [poderes.sample.id, poderes.sample.id]
end

# fighter1.power_ids = [1, 2]
# fighter2.power_ids = [3, 4]
# fighter3.power_ids = [5, 6]
# fighter4.power_ids = [7, 8]
# fighter5.power_ids = [9, 10]
# fighter6.power_ids = [11, 12]
# fighter7.power_ids = [13, 14]
# fighter8.power_ids = [15, 1]
# fighter9.power_ids = [2, 3]
# fighter10.power_ids = [4, 5]

# Vocation.create(name: 'Knight')
# Vocation.create(name: 'Sorcerer')
# Vocation.create(name: 'Paladino')
#
# 6.times do
#  Fighter.create(
#    name: Faker::Games::StreetFighter.character,
#    health: Faker::Number.between(from: 500, to: 1000)
#  )
# end
#
# 3.times do
#  Power.create(
#    name: Faker::Games::StreetFighter.move,
#    damage: Faker::Number.between(from: 1, to: 20),
#    cooldown: Faker::Number.between(from: 5, to: 60)
#  )
# end

# fighter1 = Fighter.create(name: 'Dumbledore', health: 500, vocation_id: 1)
# fighter2 = Fighter.create(name: 'Harry Potter', health: 500, vocation_id: 1)
# fighter3 = Fighter.create(name: 'Dumbledore', health: 500, vocation_id: 1)
# fighter4 = Fighter.create(name: 'Dumbledore', health: 500, vocation_id: 1)
# fighter5 = Fighter.create(name: 'Dumbledore', health: 500, vocation_id: 1)
# fighter6 = Fighter.create(name: 'Dumbledore', health: 500, vocation_id: 1)
# fighter7 = Fighter.create(name: 'Harry Potter', health: 500, vocation_id: 1)
# fighter8 = Fighter.create(name: 'Dumbledore', health: 500, vocation_id: 1)
# fighter9 = Fighter.create(name: 'Dumbledore', health: 500, vocation_id: 1)
# fighter10 = Fighter.create(name: 'Dumbledore', health: 500, vocation_id: 1)
