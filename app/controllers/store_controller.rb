class StoreController < ApplicationController
  def index
    @products = Product.last(4)
    @categories = Category.all
    @sale = Product.first
  end
  def about
    #code
  end
  def contact
    #code
  end
  
  def search_results    
    #@products = Product.where("name LIKE '%#{params[:keywords]}%' AND category_id = #{params[:search_category_names]}")
    @products = Product.where("name LIKE'%#{params[:keywords]}%' AND category_id = #{params[:search_category_names]}")
  end
  
  def all_products
    @products = Product.all
    @categories = Category.all
  end
  
  def sports_watches
    @products = Product.where(category_id: 5)
    @categories = Category.all
  end
  def luxury_watches
    @products = Product.where(category_id: 8)
    @categories = Category.all
  end
  def special_design
    @products = Product.where(category_id: 9)
    @categories = Category.all
  end
  def mechanical_watches
    @products = Product.where(category_id: 10)
    @categories = Category.all
  end
end
