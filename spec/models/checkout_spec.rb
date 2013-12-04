require 'spec_helper'

describe Checkout do
  it 'is how it all begins' do
    checkout = Checkout.create
    expect(checkout).to be_valid
  end
end
