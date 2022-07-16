class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.order(id: :desc)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create product_params

    @product.save

    redirect_to products_path
  end

  def show

  end

  def update
    @product.update product_params

    redirect_to @product
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private
  def set_product
    @product = Product.find params[:id]
  end

  def product_params
   params.require(:product).permit :code, :name, :description, :main_stotage
 end
end
