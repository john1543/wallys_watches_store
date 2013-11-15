class Lineitem < ActiveRecord::Base
  attr_accessible :order_id, :price, :product_id, :quantity
  belongs_to :order
  belongs_to :product
  
  validates :order_id, :price, :product_id, :quantity, :presence => true
  validates :order_id, :price, :product_id, :quantity, :numericality => true
end
