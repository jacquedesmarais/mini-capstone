class ProductsController < ApplicationController

  def index
    @title = "All Products"
    @products = Product.all
  end

  def show
    @title = "Product"
    @product = Product.find(params[:id])
  end

end
