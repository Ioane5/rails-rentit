require 'rails_helper'

describe 'PlantController' do

  it 'should not show borrowed plant' do
    true.should == false
  end

  it 'should show free plant' do
    true.should == false
  end
end