class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :categories
      t.float :energy_kcal_100g
      t.string :url

      t.timestamps
    end
  end
end
