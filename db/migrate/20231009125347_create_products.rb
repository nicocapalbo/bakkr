class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :product_type, null: false
      t.integer :layers
      t.string :filling

      t.timestamps
    end
  end
end
