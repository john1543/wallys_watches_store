class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :stock_quantity,:category_id, :image_name
  has_many :lineitems
  belongs_to :category
  has_many :orders, :through => :lineitems
  
  validates :description, :name, :price, :stock_quantity, :presence => true
  validates :price,:stock_quantity, :numericality => true
end
