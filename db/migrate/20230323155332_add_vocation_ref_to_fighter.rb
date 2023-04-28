class AddVocationRefToFighter < ActiveRecord::Migration[6.1]
  def change
    add_reference :fighters, :vocation, foreign_key: true
  end
end
