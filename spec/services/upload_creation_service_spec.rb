require 'spec_helper'

describe UploadCreationService do
  let(:upload)  { FactoryGirl.create(:upload) }
  let(:ucs)     { UploadCreationService.call(file_contents, upload) }
  let(:file_contents) { "purchaser name\titem description\titem price\tpurchase count\tmerchant address\tmerchant name\nSnake Plissken\t$10 off $20 of food\t10.0\t2\t987 Fake St\tBob's Pizza" }

  it 'facilitates conversion of text files to Checkout objects' do
    expect(ucs.count).to eq(1)
  end
end
