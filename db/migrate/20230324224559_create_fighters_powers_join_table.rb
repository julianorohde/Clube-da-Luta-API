class CreateFightersPowersJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :fighters_powers, id: false do |t|
      t.bigint :fighter_id
      t.bigint :power_id
    end

    add_index :fighters_powers, :fighter_id
    add_index :fighters_powers, :power_id
  end
end
