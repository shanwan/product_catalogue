require 'rails_helper'

RSpec.describe Product, type: :model do
  it "is valid with a name, description & price" do
    product = Product.new
    product.product_name = "test"
    product.description = "test test"
    product.price = 10
    expect(product).to be_valid
  end
  it "is invalid without a name" do
    product = Product.new(product_name: nil)
    product.valid?
    expect(product.errors[:product_name]).to include("can't be blank")
  end
  it "is invalid without a description" do
    product = Product.new(description: nil)
    product.valid?
    expect(product.errors[:description]).to include("can't be blank")
  end
  it "is invalid without a price" do
    product = Product.new(price: nil)
    product.valid?
    expect(product.errors[:price]).to include("can't be blank")
  end
end
