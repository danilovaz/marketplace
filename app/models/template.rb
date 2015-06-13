class Template < ActiveRecord::Base
  belongs_to :category

  has_many :order_templates
  has_many :orders, :through => :order_templates
end
