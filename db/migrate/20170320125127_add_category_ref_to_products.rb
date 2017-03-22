# to add category id for reference
class AddCategoryRefToProducts < ActiveRecord::Migration
  def change
    remove_reference :categories, :product, index: true, foreign_key: true
    add_reference :products, :category, index: true, foreign_key: true
  end
end
