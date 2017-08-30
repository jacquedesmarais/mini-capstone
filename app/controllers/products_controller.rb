class ProductsController < ApplicationController

  def one_product_action
    @title = "Products"
    @product = Product.first
    render 'one_product_page.html.erb'
  end

  def all_product_action
    @title = "All Products"
    @products = Product.all
    render 'all_product_page.html.erb'
  end

end
