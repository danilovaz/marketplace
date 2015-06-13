class User < ActiveRecord::Base
  has_many :orders
  has_many :templates, :through => :orders
  has_many :phones

  accepts_nested_attributes_for :phones, :allow_destroy => true, :reject_if => 
  	proc { |attrs| attrs.all? { |k, v| v.blank? } }

  config_my_admin do |admin|
  	admin.application = "content"
  end
end
