class CreateIngredients < ActiveRecord::Migration[7.1]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.decimal :quantity
      t.string :unit

      t.timestamps
    end
  end
end
