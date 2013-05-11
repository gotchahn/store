class HomeController < ApplicationController
  def index
  end

  def listing
    @products = Product.order("price ASC")
  end
end
