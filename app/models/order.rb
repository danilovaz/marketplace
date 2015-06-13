class Order < ActiveRecord::Base
  belongs_to :user

  has_many :order_templates
  has_many :templates, :through => :order_templates

end
