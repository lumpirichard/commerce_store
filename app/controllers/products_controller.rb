class ProductsController < ApplicationController

  @@cart = []

  def catalogue
    @catalogue = Product.all
  end

  def view
    @product = Product.find(params[:id].to_i)
  end

  def add
    @product = Product.find(params[:id].to_i)
    @@cart << @product
    @cart = @@cart
  end


end
