class Template < ActiveRecord::Base
  belongs_to :category

  has_many :order_templates
  has_many :orders, :through => :order_templates

  config_my_admin do |admin|
  	admin.application = "content"
  	admin.list_display = [:name, :category, :description, :value]
  	admin.fieldsets = [{:fields => [:category, :name, :description, :value]}]
  end
end
