class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :tel
      t.text :address
      t.text :url

      t.timestamps null: false
    end
  end
end
