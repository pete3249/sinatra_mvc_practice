class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.float :price
      t.string :spicyness

      t.timestamps null: false
    end
  end
end
