require 'spec_helper'

describe Item do
  it 'has a description and price' do
    item = Item.create(item_description: 'foo', item_price: 12)
    expect(item).to be_valid
  end
end
