class Category < ActiveRecord::Base
  attr_accessible :category_name
  has_many :products
  
  validates :category_name, :presence => true
  
  def name
    self.category_name
  end
end
