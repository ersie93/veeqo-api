class OrdersToProductsController < ApplicationController

  def show
    @orders = Order.all
    @orders_to_product = OrdersToProducts.all
    @products = Product.all
  end

  def new
    @order = OrdersToProducts.new
    @products = Product.all
  end

  def create

    # "product"=>"1", "quantity"=>"2"
    @product = Product.find(params["order"]["product"])
    quantity = params["order"]["quantity"]
    @order = Order.new()
    @order.save!

    @orders_to_product = OrdersToProducts.new(quantity: quantity, product_id: @product.id, order_id: @order.id)
    @orders_to_product.save!
    # @order = Order.new()

    # @products = OrdersToProducts.product
    box = GettingBoxService.get(@order, [@orders_to_product], [@product])

    @order.box_id = box.id
    @order.save!
    # flash[:notice] = "Successfully added to cart. #{view_context.link_to 'wanna see your cart?', order_path(@orders_to_product.order_id)}".html_safe
    # redirect_to @orders_to_product.product

    # redirect_to @orders_to_product.product, notice: "Succesfully added to cart"
  end

  def update
  end

  def destroy
    @product_in_order = OrdersToProducts.find(params[:id])
    @product_in_order.destroy
    redirect_to order_path(@product_in_order.order_id)
  end

  # private

  # def orders_to_product_params
  #   params.require(:orders_to_products).permit!
  # end
end
