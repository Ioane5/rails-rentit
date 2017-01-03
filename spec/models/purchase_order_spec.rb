require 'rails_helper'

describe 'Purchase Order validity' do

  it 'should not be valid to save end date before start date' do

    true.should == false
  end
end