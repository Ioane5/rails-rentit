class AddAssociations < ActiveRecord::Migration

  def change
    add_reference :purchase_orders, :plant, index: true
  end
end
