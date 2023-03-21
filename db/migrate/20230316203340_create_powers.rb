class CreatePowers < ActiveRecord::Migration[6.1]
  def change
    create_table :powers do |t|
      t.string :name
      t.integer :damage
      t.integer :cooldown

      t.timestamps
    end
  end
end
