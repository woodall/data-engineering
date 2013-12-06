require 'spec_helper'

describe CheckoutInitializerService do
  it 'creates a Checkout object with the purchase count' do
    checkout = FactoryGirl.create(:checkout)
    purchase_count = checkout.purchase_count
    expect(checkout).to be_valid
    expect(purchase_count).to eq(2)
  end
end
