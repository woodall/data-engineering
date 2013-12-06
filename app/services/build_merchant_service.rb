class BuildMerchantService

  def self.call(data)
    address = data[4]
    name = data[5]

    begin
      Merchant.where(merchant_address: address, merchant_name: name ).first_or_create
    rescue
      raise "Sorry, wrong file format."
    end
  end
end

