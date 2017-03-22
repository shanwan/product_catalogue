# methods for categories controller
class Admin::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.all
    # @products = Product.filter(params.slice(:product_name))
  end

  def show
    @products = Product.all
    @category_products = @products.where(category_id: params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)
      redirect_to @category
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
    params.require(:product).permit(:product_name, :price, :description)
  end

  def filtering_params(params)
    params.slice(:product_name)
  end
end
