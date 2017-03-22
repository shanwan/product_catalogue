# methods for categories controller
class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.all
    @products = Product.where(nil)
    filtering_params(params).each do |key, value|
      @products = @products.public_send(key, value) if value.present?
    end
  end

  def show
    @products = Product.all
    @category_products = @products.where(category_id: params[:id])
    @category_products = @category_products.where(nil)
    filtering_params(params).each do |key, value|
      @category_products = @category_products.public_send(key, value) if value.present?
    end
  end

  private

  def category_params
    params.require(:category).permit(:category_name)
  end

  def product_params
    params.require(:product).permit(:product_name, :price, :description)
  end

  def filtering_params(params)
    params.slice(:contains)
  end
end
