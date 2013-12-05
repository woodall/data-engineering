module CheckoutInitializerService

  def self.call(data)
    quantity = data[3]
    Checkout.create(purchase_count: quantity)
  end
end
