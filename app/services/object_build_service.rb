class ObjectBuildService

  def self.call(data)
    data.inject([]) do |objects, order_info|
      order_info = [
          BuildCustomerService.call(order_info),
          BuildItemService.call(order_info),
          BuildMerchantService.call(order_info),
          CheckoutInitializerService.call(order_info)
        ]
      objects << order_info
    end
  end
end

