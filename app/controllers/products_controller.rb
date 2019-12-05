class ProductsController < ApplicationController
  def catalogue
    @catalogue = Product.all
  end

  def view
  end
end
