class CartedProductsController < ApplicationController

  def index
    if current_user && current_user.current_cart.any?
      @carted_products = current_user.current_cart
    else
      flash[:warning] = "Ypu have no items in your cart. Why don't you find some fish to buy?"
      redirect_to "/"
    end
  end

  def new
  
  end

  def create
    carted_product = CartedProduct.new(
                              user_id: current_user.id,
                              product_id: params[:product_id],
                              quantity: params[:quantity],
                              status: "carted"
                              )

    carted_product.save

    redirect_to "/cart"
    flash[:success] = "You added a fish to the cart."
  end

  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")
    flash[:success] = "Product removed"
    redirect_to '/cart'
  end

end
