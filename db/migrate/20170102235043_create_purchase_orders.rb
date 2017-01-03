class CreatePurchaseOrders < ActiveRecord::Migration
  def change
    create_table :purchase_orders do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :cost

      t.timestamps null: false
    end
  end
end
