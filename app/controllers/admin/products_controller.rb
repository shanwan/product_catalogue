# products controller
class Admin::ProductsController < ApplicationController
  def index
    @category = Category.find(params[:id])
    @products = @category.products
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @product = @category.products.new
  end

  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.new(product_params)

    if @product.save
      redirect_to admin_categories_path
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to admin_category_path
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to admin_category_path
  end

  private

  def product_params
    params.require(:product).permit(:product_name, :description, :price, :id, :category_id)
  end
end
