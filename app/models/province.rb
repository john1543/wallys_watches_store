class Province < ActiveRecord::Base
  attr_accessible :gst, :hst, :name, :pst
  has_many :customer
  
  validates :name, :presence => true
  validates :gst, :hst, :pst, :numericality => true
end
