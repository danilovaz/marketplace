class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.references :user, index: true
      t.string :phone
      
      t.timestamps
    end
  end
end
