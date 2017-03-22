# defining the category associations and validations
class Category < ActiveRecord::Base
  has_and_belongs_to_many :products

  validates :category_name, presence: true, uniqueness: true
end
