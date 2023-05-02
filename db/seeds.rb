Fighter.delete_all
Power.delete_all
Vocation.delete_all

Vocation.create(name: 'Sorcerer')
Vocation.create(name: 'Paladin')
Vocation.create(name: 'Knight')

vocations = Vocation.all

10.times do
  Fighter.create(
    name: Faker::Games::LeagueOfLegends.champion,
    health: Faker::Number.between(from: 600, to: 3000),
    attack_power: 50,
    defense_power: 50,
    vocation_id: vocations.sample.id
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
