class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :stock_quantity
  has_many :lineitem
  has_many :order, :through => :lineitem
  
  validates :description, :name, :price, :stock_quantity, :presence => true
  validates :price,:stock_quantity, :numericality => true
end
