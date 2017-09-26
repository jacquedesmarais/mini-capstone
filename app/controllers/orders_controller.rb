class OrdersController < ApplicationController

  def new
    
  end

  def create
    @carted_products = CartedProduct.all.where("user_id = ? AND status = ?", current_user.id, "carted")

    order = Order.new(
                      user_id: current_user.id
                      )

    # order.calculate_totals
    order.save

    # @carted_products.each do |carted_product|
    #   subtotal = ""
    #   subtotal << carted_product.product.price * carted_product.quantity
    # end

    redirect_to "/orders/#{ order.id }"
  end

  def show
    @order = Order.find(params[:id])
  end

end
