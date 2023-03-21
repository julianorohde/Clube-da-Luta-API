class CreateVocations < ActiveRecord::Migration[6.1]
  def change
    create_table :vocations do |t|
      t.string :name

      t.timestamps
    end
  end
end
