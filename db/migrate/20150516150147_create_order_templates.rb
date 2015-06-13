class CreateOrderTemplates < ActiveRecord::Migration
  def change
    create_table :order_templates do |t|
      t.references :template, index: true
      t.references :order, index: true

      t.timestamps
    end
  end
end
