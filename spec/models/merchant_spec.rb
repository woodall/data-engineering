require 'spec_helper'

describe Merchant do
  it 'exists' do
    donuts = Merchant.create( merchant_name: 'Dave\'s Donuts', merchant_address: '1919 Colorado Building')
    expect(donuts).to be_valid
  end
end
