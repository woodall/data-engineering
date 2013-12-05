require 'spec_helper'

describe BuildItemService do
  it 'ensures only one record per item' do
    data        = [ 'n/a', '$10 off $20 of food', '10.0', 'n/a', 'n/a']
    data_again  = [ 'n/a', '$10 off $20 of food', '10.0', 'n/a', 'n/a']

    food           = BuildItemService.call(data)
    food_leftovers = BuildItemService.call(data_again)

    expect(Item.all.count).to eq(1)
  end
end
