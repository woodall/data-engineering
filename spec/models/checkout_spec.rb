require 'spec_helper'

describe Checkout do
  it 'exists' do
    checkout = Checkout.create
    expect(checkout).to be_valid
  end

  it 'totals the items in the line item' do
  end
end
