class OrdersController < ApplicationController

  def new
    
  end

  def create
    order = Order.new(
                      user_id: current_user.id,
                      product_id: params[:product_id],
                      quantity: params[:quantity],
                      )

   order.calculate_totals

    order.save

    redirect_to "/orders/#{ order.id }"
    flash[:success] = "You have successfully placed your order."
  end

  def show
    @order = Order.find(params[:id])
  end

end
