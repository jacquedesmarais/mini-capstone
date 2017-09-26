class CartedProductsController < ApplicationController

def new
  
end

def create
  carted_product = CartedProduct.new(
                            user_id: current_user.id,
                            product_id: params[:product_id],
                            quantity: params[:quantity],
                            order_id: params[:order_id],
                            status: "carted"
                            )

  carted_product.save

  redirect_to "/"
  flash[:success] = "You added a fish to the cart."
end

def index
  if current_user
    @carted_products = CartedProduct.all.where("user_id = ? AND status = ?", current_user.id, "carted")
  else
    redirect_to "/"
  end
end

end
