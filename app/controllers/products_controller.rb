class ProductsController < ApplicationController

  def index
    @title = "All Products"
    @products = Product.all
  end

  def new
    
  end

  def create
    product = Product.new(
                          name: params[:name],
                          price: params[:price],
                          image: params[:image],
                          description: params[:description]
                          )

    product.save
    flash[:success] = "You added a #{ product.name } to the tank"
    redirect_to "/products/#{ product.id }" 
  end

  def show
    @title = "Product"
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])

    product.assign_attributes(
                              name: params[:name],
                              price: params[:price],
                              image: params[:image],
                              description: params[:description]
                              )

    product.save
    flash[:success] = "You edited your #{ product.name }. Be sure to say hi next time you visit."
    redirect_to "/products/#{ product.id }"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:warning] = "You successfully killed a #{ product.name }"
    redirect_to "/products"
  end

end
