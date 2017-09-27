class OrdersController < ApplicationController

  def new
    
  end

  def create
    carted_products = current_user.current_cart

    order = Order.create(user_id: current_user.id)
    order.save

    carted_products.update_all(status: "ordered", order_id: order.id)
    order.calculate_totals

    redirect_to "/orders/#{ order.id }"
  end

  def show
    @order = Order.find(params[:id])
    redirect_to "/" unless current_user && current_user.id == @order.user_id
  end

end
