class AddAttackPowerToFighter < ActiveRecord::Migration[6.1]
  def change
    add_column :fighters, :attack_power, :integer
    add_index :fighters, :attack_power
  end
end
