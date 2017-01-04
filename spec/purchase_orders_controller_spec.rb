require 'rails_helper'

RSpec.describe PurchaseOrdersController, type: :controller do


  it 'should do not be valid to purchase an unavailable plant' do
    p = FactoryGirl.create(:plant)
    FactoryGirl.create(:purchase_order, :start_date => 1.days.ago, :end_date => 2.days.from_now, :plant_id => p.id)
    expect(controller.check_plant_is_available(p.id, 1.days.from_now)).to be(false)
  end
end