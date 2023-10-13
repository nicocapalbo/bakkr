class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.references :customer, null: false, foreign_key: true
      t.integer :status
      t.datetime :delivery_time
      t.integer :deliver_method
      t.integer :payment_status
      t.timestamps
    end
  end
end
