class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :status
      t.datetime :payment_date
      t.references :user, index: true

      t.timestamps
    end
  end
end
