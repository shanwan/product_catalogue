# categories table schema
class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.timestamps null: false
      t.string :category_name, index: true
    end
  end
end
