class StoreController < ApplicationController
  def index
    @products = Product.last(4)
  end
end
