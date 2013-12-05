require 'spec_helper'

describe Upload do
  it 'is how it all begins' do
    upload = Upload.create
    expect(upload).to be_valid
  end

  it 'totals all checkouts' do

  end
end
