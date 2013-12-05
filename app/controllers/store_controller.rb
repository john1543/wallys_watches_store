class StoreController < ApplicationController
  def index
    @products = Product.last(4)
    @categories = Category.all
  end
  
  def search_results    
    @product2 = Product.where('name LIKE ?',"(params[:keywords]%")
  end
end
