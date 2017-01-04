require 'rails_helper'

describe 'Purchase Controller behavior' do

  it 'should do not be valid to purchase an unavailable plant' do
    p = build(:plant)
    build(:purchase_order, :start_date => 1.days.ago, :end_date => 2.days.from_now, :plant_id => p.id)
    expect(PurchaseController.check_plant_is_available(p.id, 1.days.from_now)).to be(false)
  end
end