require 'spec_helper'

describe Customer do
  it 'has a name' do
    customer = Customer.create
    expect(customer).to be_valid
  end
end
