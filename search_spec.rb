require 'rspec'
require_relative 'search'

RSpec.describe 'search' do
  it 'should return false when searching for a value in an empty array' do
    input_array = []
    search_value = 0

    expect(search(input_array, search_value)).to eq(false)
  end

  it 'should return 0 when searching for 1 in array [1]' do
    input_array = [1]
    search_value = 1

    expect(search(input_array, search_value)).to eq(0)
  end

  it 'should return 1 when searching for 1 in array [0, 1]' do
    input_array = [0, 1]
    search_value = 1

    expect(search(input_array, search_value)).to eq(1)
  end
end
