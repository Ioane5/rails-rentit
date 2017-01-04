require 'rails_helper'

describe PlantsController do

  it 'should not set to show borrowed plant' do
    plant_params = {:name => 'Roller', :start_date => 1.days.from_now, :end_date => 5.days.from_now}
    get :show, plant_params: plant_params

    expected_results = []
    assigns(:movies).should == expected_results
  end

  it 'should set to show free plant' do
    plant_params = {:name => 'Excavator', :start_date => 1.days.from_now, :end_date => 10.days.from_now}
    get :show, plant_params: plant_params

    expected_results = [Plants.find_by_id(1)]
    assigns(:movies).should == expected_results
  end

  it 'should select plant list template for rendering' do
    plant_params = {:name => 'Excavator', :start_date => 1.days.from_now, :end_date => 10.days.from_now}
    get :show, plant_params: plant_params
    expect(response).to render_template :plants
  end
end