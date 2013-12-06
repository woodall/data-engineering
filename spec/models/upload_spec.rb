require 'spec_helper'

describe Upload do
  it 'is how it all begins' do
    upload = Upload.create
    expect(upload).to be_valid
  end

  describe "#total" do
    it 'Adds Checkout totals together' do
      upload          = FactoryGirl.create(:upload)
      item            = FactoryGirl.create(:item)
      checkout        = FactoryGirl.create(:checkout, upload_id: upload.id, item_id: item.id)
      checkout_2      = FactoryGirl.create(:checkout, upload_id: upload.id, item_id: item.id)
      upload_total    = upload.total
      expected_total  = 40 # Based of the factories

      expect(upload_total).to eq(expected_total)
    end
  end
end
