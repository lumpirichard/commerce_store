class ProductsController < ApplicationController

  @@cart = []

  def catalogue
    if params[:name_search].nil? || params[:name_search].empty?
      @catalogue = Product.all
    else
      # @catalogue = Product.select do |product|
      #   product.energy_kcal_100g <= params[:calorie_count].to_f
      # end
      @catalogue = Product.where("name LIKE ?", "%#{params[:name_search]}%")
    end
  end

  def view
    @product = Product.find(params[:id].to_i)
  end

  def add
    @product = Product.find(params[:id].to_i)
    @@cart << @product
    @cart = @@cart
  end

  def cart
    @cart = @@cart
  end

  def remove
    @product = Product.find(params[:id].to_i)
    @@cart.delete(@product)
    @cart = @@cart
  end


end
