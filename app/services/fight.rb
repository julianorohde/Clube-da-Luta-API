# frozen_string_literal: true

# Description/Explanation of Person class
# Execute " Fight.start(Fighter.all.sample, Fighter.all.sample) " para iniciar
class Fight
  def self.start(fighter1, fighter2)
    new(fighter1, fighter2).start
  end

  def initialize(_fighter1, _fighter2)
    lutadores = Fighter.all

    lutadoresProntos = [lutadores.sample, lutadores.sample]

    @fighter1 = lutadoresProntos.first
    @fighter2 = lutadoresProntos.second

    # @fighter1 = [fighter1, fighter2].sample
    # @fighter2 = ([fighter1, fighter2] - [fighter1]).first
  end

  def start
    puts "#{fighter1.name} está lutando contra #{fighter2.name}!"

    health1 = fighter1.health
    health2 = fighter2.health

    healthTotal1 = health1 + fighter1.defense_power
    healthTotal2 = health2 + fighter2.defense_power

    while healthTotal1 or healthTotal2 <= 0

      damage1 = fighter1.powers.sample.damage
      damage2 = fighter2.powers.sample.damage

      damageTotal1 = damage1 + fighter1.attack_power
      damageTotal2 = damage2 + fighter2.attack_power

      puts "#{fighter1.name} ataca com #{fighter1.powers.first.name}!"

      healthTotal2 -= damageTotal1

      healthTotal2 = 0 if healthTotal2 <= 0 # (AQUI)

      puts "O ataque de #{fighter1.name} foi de #{damageTotal1} e deixou #{fighter2.name} com #{healthTotal2} de vida!"

      return "#{fighter1.name} WINS!" if healthTotal2.zero?

      puts "#{fighter2.name} contra-ataca com #{fighter2.powers.first.name}!"

      healthTotal1 -= damageTotal2

      healthTotal1 = 0 if healthTotal1 <= 0

      puts "O ataque de #{fighter2.name} foi de #{damageTotal2} e deixou #{fighter1.name} com #{healthTotal1} de vida!"

      return "#{fighter2.name} WINS!" if healthTotal1.zero?

      puts 'Próximo turno de ataque!'
    end
  end

  private

  attr_accessor :fighter1, :fighter2
end
