module ObjectBuildService

  def self.call(data)
    data.inject([]) do |objects, order_info|
      order_info = {
        customer: BuildCustomerService.call(order_info),
        item:     BuildItemService.call(order_info),
        merchant: BuildMerchantService.call(order_info),
        checkout: CheckoutInitializerService.call(order_info)
        }
      objects << order_info
    end
  end
end

