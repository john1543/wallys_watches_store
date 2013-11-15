class Lineitem < ActiveRecord::Base
  attr_accessible :order_id, :price, :product_id, :quantity
  
  validates :order_id, :price, :product_id, :quantity, :presence => true
  validates :order_id, :price, :product_id, :quantity, :numericality => true
end
