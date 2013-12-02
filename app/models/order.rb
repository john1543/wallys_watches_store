class Order < ActiveRecord::Base
  attr_accessible :customer_id, :gst_rate, :hst_rate, :pst_rate, :status
  belongs_to :customer
  has_many :lineitems
  has_many :products, :through => :lineitems
  
  validates :status, :customer_id, :presence => true
  validates :customer_id, :gst_rate, :hst_rate, :pst_rate, :numericality => true
end
