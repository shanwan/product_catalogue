require 'rails_helper'

RSpec.describe Category, type: :model do
  it "is valid with a name" do
    category = Category.new
    category.category_name = 'test'
    expect(category).to be_valid
  end
  it "is invalid without a name" do
    category = Category.new(category_name: nil)
    category.valid?
    expect(category.errors[:category_name]).to include("can't be blank")
  end
end
