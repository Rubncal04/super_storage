class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.create product_params

    @product.save

    redirect_to products_path
  end

  def product_params
   params.require(:product).permit :code, :name, :description, :main_stotage
 end
end
