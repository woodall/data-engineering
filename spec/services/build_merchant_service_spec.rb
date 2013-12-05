require 'spec_helper'

describe BuildMerchantService do
  it 'ensures only one record per merchant' do
    data            = [ 'n/a', 'n/a', 'n/a', 'Dave\'s Donuts', '1919 Colorado Building']
    data_again      = [ 'n/a', 'n/a', 'n/a', 'Dave\'s Donuts', '1919 Colorado Building']

    donut_shop      = BuildMerchantService.call(data)
    same_donut_shop = BuildMerchantService.call(data_again)

    expect(Merchant.all.count).to eq(1)
  end
end
