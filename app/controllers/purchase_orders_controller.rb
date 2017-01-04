class PurchaseOrdersController < ApplicationController

  def check_plant_is_available plant_id, start_date
    p = PurchaseOrder.new(plant_id: plant_id, start_date: start_date , end_date: start_date + 1.days)
    p.valid?
  end
end