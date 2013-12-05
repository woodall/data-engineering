require 'spec_helper'

describe UploadCreationService do
  it 'doesnt fail' do
    upload = UploadCreationService.call(data)
    expect(upload).to be_valid
  end
end
