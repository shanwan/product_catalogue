# defining the product associations and validations
class Product < ActiveRecord::Base
  # keep the cache value up to date, and then return that
  # value in response to the size method.
  has_and_belongs_to_many :categories, counter_cache: true

  # scope search
  scope :contains, ->(product_name) { where('product_name like ?', "%#{product_name}%") }
  # scope :contains, ->(product_name) { where('product_name like ?', '#%{product_name}%' }

  validates :product_name,
            presence: true,
            uniqueness: true
  validates :description,
            presence: true
  validates :price,
            format: {
              with: /\A\d+(?:\.\d{0,2})?\z/
            },
            numericality: {
              greater_than: 0
            },
            presence: true
end
