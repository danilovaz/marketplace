class User < ActiveRecord::Base
  has_many :orders
  has_many :templates, :through => :orders

end
