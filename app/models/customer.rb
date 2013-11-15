class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :email, :first_name, :last_name, :postal_code, :province_id
  
  validates :first_name, :last_name, :address, :city, :postal_code, :email, :province_id, :presence => true
  validates :province_id, :numericality => true
end
