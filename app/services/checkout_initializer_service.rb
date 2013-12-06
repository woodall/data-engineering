class CheckoutInitializerService

  def self.call(data)
    quantity = data[3]

    begin
      Checkout.create(purchase_count: quantity)
    rescue
      raise "Sorry, wrong file format."
    end
  end
end
