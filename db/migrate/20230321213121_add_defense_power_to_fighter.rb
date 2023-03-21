class AddDefensePowerToFighter < ActiveRecord::Migration[6.1]
  def change
    add_column :fighters, :defense_power, :integer
    add_index :fighters, :defense_power
  end
end
