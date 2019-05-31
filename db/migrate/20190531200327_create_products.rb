class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :parent
      t.string :product_type
      t.string :product_name
      t.text :description
      t.integer :price
      t.string :shade_name
      t.string :shade_description
      t.string :color_group
      t.text :ingredient_list
      t.timestamps
    end
  end
end
