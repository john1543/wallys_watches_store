class StoreController < ApplicationController
  def index
    @products = Product.last(4)
    @categories = Category.all
    @sale = Product.first
  end
  
  def search_results    
    #@products = Product.where("name LIKE '%#{params[:keywords]}%' AND category_id = #{params[:search_category_names]}")
    @products = Product.where("name LIKE'%#{params[:keywords]}%' AND category_id = #{params[:search_category_names]}")
  end
end
