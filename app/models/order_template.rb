class OrderTemplate < ActiveRecord::Base
  belongs_to :template # foreign key - template_id
  belongs_to :order # foreign key - order_id

end
