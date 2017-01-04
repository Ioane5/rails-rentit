require 'rails_helper'

describe 'Purchase Order validity' do

  it 'should not be valid to save end date before start date' do
    expect(FactoryGirl.create(:purchase_order, :start_date => 1.days.ago, :end_date => 2.days.ago).error_on(:end_date).size).to eq(1)
  end
end