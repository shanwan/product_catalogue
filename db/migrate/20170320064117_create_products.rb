# products schema
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.timestamps null: false
      # for good performance add index: true
      t.string :product_name, index: true
      t.text :description
      # up to 2 digit after decimal and max 8 digits
      t.decimal :price, precision: 8, scale: 2
    end
  end
end
