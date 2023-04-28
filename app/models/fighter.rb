class Fighter < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }, uniqueness: { case_sensitive: false }
  validates :health, presence: true

  belongs_to :vocation, foreign_key: 'vocation_id'
  has_and_belongs_to_many :powers

  # PARA EXECUTAR O MÉTODO DIGITE: Fighter.new.start

  def start
    lutadores = Fighter.all
    selecionado1 = lutadores.sample
    selecionado2 = lutadores.sample

    selecionado1.lutar(selecionado2)
  end

  def lutar(opponent)
    # opponent = Fighter.all
    # random_opponent = opponent.sample

    lutador1 = name
    lutador2 = opponent.name

    damage1 = powers.sample.damage
    damage2 = opponent.powers.sample.damage

    puts "#{lutador1} está lutando contra #{lutador2}!"

    while health or opponent.health <= 0

      puts "#{lutador1} ataca com #{powers.first.name}!"

      opponent.health -= damage1

      opponent.health = 0 if opponent.health <= 0

      puts "O ataque de #{lutador1} foi de #{damage1} e deixou #{lutador2} com #{opponent.health} de vida!"

      return "#{lutador1} WINS!" if opponent.health == 0

      puts "#{lutador2} contra-ataca com #{opponent.powers.first.name}!"

      self.health -= damage2

      self.health = 0 if self.health <= 0

      puts "O ataque de #{lutador2} foi de #{damage2} e deixou #{lutador1} com #{health} de vida!"

      if health == 0
        "#{lutador2} WINS!"
      else
        puts 'Próximo turno de ataque!'
      end
    end

    # puts "A vida é maior que 0"

    # puts "#{lutador2} contra-ataca com #{opponent.powers.first.name}!"

    # end
    #     return 'oi' if opponent.health == 0
    #
    #     return 'tchau'
    #     if health == 0
    #       return "#{lutador2} está com 0 de vida e morreu!"
    #       return "#{lutador1} WINS!"
    #     else
    #       return "Vez de #{lutador2}!"
    #     end

    #     if self.health == 0
    #       return "#{lutador1} está com 0 de vida e morreu!"
    #       return "#{lutador2} WINS!"
    #     else
    #       return "Vez de #{lutador1}!"
    #     end
  end
end

#   def start
#     puts 'Insira o nome do lutador 01:'
#
#     fighter1 = gets.chomp
#
#     def lutar(fighter1, fighter2)
#       fighter1 = Fighter.find_by(name:)
#

# fighter1 = Fighter.first
# fighter2 = Fighter.second
