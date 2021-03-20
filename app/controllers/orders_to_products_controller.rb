class OrdersToProductsController < ApplicationController
  def show
    @orders = OrdersToProduct.all
  end

  def create

    @orders_to_product = OrdersToProduct.new(orders_to_product_params)
    @orders_to_product.save

    # flash[:notice] = "Successfully added to cart. #{view_context.link_to 'wanna see your cart?', order_path(@orders_to_product.order_id)}".html_safe
    # redirect_to @orders_to_product.product

    # redirect_to @orders_to_product.product, notice: "Succesfully added to cart"
  end

  def update
  end

  def destroy
    @product_in_order = OrdersToProduct.find(params[:id])
    @product_in_order.destroy
    redirect_to order_path(@product_in_order.order_id)
  end

  private

  def orders_to_product_params
    params.require(:orders_to_product).permit(:quantity, :product_id)
  end
end
