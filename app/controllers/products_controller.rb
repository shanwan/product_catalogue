# products controller
class ProductsController < ApplicationController
  def index
    @category = Category.find(params[:id])
    @products = @category.products
  end

  def show
    @category = Category.find(params[:id])
    @product = Product.find(params[:id])
  end
  
  private

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
