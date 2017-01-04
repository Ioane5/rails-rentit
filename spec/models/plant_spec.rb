require 'rails_helper'

describe 'Plant Validity' do

  it 'should be invalid to create plant with negative price' do
    expect(build(:plant, :price => -1).error_on(:price).size).to eq(1)
  end
end
