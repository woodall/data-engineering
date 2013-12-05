require 'spec_helper'

describe BuildCustomerService do
  it 'ensures only one record per customer' do
    data            = [ 'Gilbert Arenas' ]
    data_again      = [ 'Gilbert Arenas' ]

    gilbert         = BuildCustomerService.call(data)
    gilbert_returns = BuildCustomerService.call(data_again)

    expect(Customer.all.count).to eq(1)
  end
end
