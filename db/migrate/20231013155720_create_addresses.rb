class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :address_name
      t.string :street_first_line, null: false
      t.string :street_second_line
      t.string :postal_code, null: false
      t.string :city
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
