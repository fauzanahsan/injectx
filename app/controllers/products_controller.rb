class ProductsController < ApplicationController
  def index
    @products = Product.order("name #{params[:direction]}")
    #params[:column] = col_name
    Product.calculate(:price, params[:column])
  end

  def show
    @product = Product.find(params[:id])
  end
end
