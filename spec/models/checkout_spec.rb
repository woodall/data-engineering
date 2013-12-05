require 'spec_helper'

describe Checkout do
  it 'exists' do
    checkout = Checkout.create
    expect(checkout).to be_valid
  end

  describe "#total" do
    it 'Multiplies purchase quantity by item price' do
      item              = FactoryGirl.create(:item)
      checkout          = FactoryGirl.create(:checkout)
      checkout.item_id  = item.id
      checkout_total    = checkout.total
      expected_total    = 20 # Based of the factories
      expect(checkout_total).to eq(expected_total)
    end
  end
end
