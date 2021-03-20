class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    if @order.status == 'open'
      @myproducts = OrdersToProduct.where(order_id:@order.id)
    end
  end

  def update
    @order = Order.find(params[:id])
    redirect_to user_path(current_user) if @order.update(order_params)
  end

  private

  def order_params
    params.require(:order).permit(:status)
  end
end
