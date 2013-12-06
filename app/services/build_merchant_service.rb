class BuildMerchantService

  def self.call(data)
    address = data[4]
    name = data[5]

    Merchant.where(merchant_address: address, merchant_name: name ).first_or_create
  end
end

