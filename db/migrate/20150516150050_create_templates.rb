class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name
      t.text :description
      t.string :image
      t.float :value
      t.references :category, index: true

      t.timestamps
    end
  end
end
