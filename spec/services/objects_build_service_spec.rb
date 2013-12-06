require 'spec_helper'

describe ObjectBuildService do
  it 'converts arrays into objects' do

    data =  [
              ["Snake Plissken", "$10 off $20 of food", "10.0", "2", "987 Fake St", "Bob's Pizza" ],
              ["Amy Pond", "$30 of awesome for $10", "10.0", "5", "456 Unreal Rd", "Tom's Awesome Shop" ]
            ]
    objects = ObjectBuildService.call(data)
    expect(objects.first[0].kind_of? Customer).to be_true
    expect(objects.first[1].kind_of? Item).to be_true
    expect(objects.first[2].kind_of? Merchant).to be_true
    expect(objects.first[3].kind_of? Checkout).to be_true
  end
end
