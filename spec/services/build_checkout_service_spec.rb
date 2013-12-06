require 'spec_helper'

describe BuildCheckoutService do

  let(:customer)  { FactoryGirl.create(:customer) }
  let(:item)      { FactoryGirl.create(:item) }
  let(:merchant)  { FactoryGirl.create(:merchant) }
  let(:checkout)  { FactoryGirl.create(:checkout) }
  let(:upload)    { FactoryGirl.create(:upload) }
  let(:objects)   { [[ customer, item, merchant, checkout ]] }
  let(:build_creation_service) { BuildCheckoutService.call(objects, upload) }

  before(:each) { build_creation_service }

  it 'returns an array of objects' do
    customer  = build_creation_service.first[0]
    item      = build_creation_service.first[1]
    merchant  = build_creation_service.first[2]

    expect(customer.is_a? Customer).to be_true
    expect(item.is_a? Item).to be_true
    expect(merchant.is_a? Merchant).to be_true
  end

  it 'is associated with an upload object' do
    upload_checkout_id = upload.checkouts.first.id
    expect(upload_checkout_id).to eq(checkout.id)
  end
end

