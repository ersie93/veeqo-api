class ProductsController < ApplicationController

    def index
        @products = Veeqo::Product.all
        puts @products

    end

    def show
        # Piece of code to show how to clean the data
        # @products = Veeqo::Product.all
        # myproducts = @products
        #@products[2].as_json
        # myproducts[2].sellables[0][:measurement_attributes]
        #     #that returns to me  {:width=>10.0, :height=>10.0, :depth=>15.0, id:=>52647189, :dimensions_unit=>"cm"}

        #getting the specific product
        @product = Veeqo::Product.find(@product.id)
        #id for reference 25999333 Veeqo::Product.find(25999333)
        mylistofattr = Array.new()

        @product.sellables.map{|items| mylistofattr << [ items[:measurement_attributes], :weight_grams => items[:weight_grams], :weight_unit => items[:weight_unit], :weight => items[:weight]]}

        #creating a single hash with my data organized
        mylistofattr = mylistofattr.flatten.inject(:merge)

    end

    def new
        @product = Product.new
      end

    def create
        @product = Product.new(product_params)
        if @product.save!
            redirect_to product_path(@product)
        else
            render :new
        end
    end

    def edit
    end

    def update
      @product.update(product_params)
      # redirect_to
    end

    def destroy
      @product.destroy product_path(@product)
    end

    private

    def set_product
      @product = Product.find(params[:id])
      authorize @product
    end

    def product_params
      params.require(:product).permit(:name, :description, :stock, :price, :photo)
    end
end
