module BuildCustomerService

  def self.call(data)
    customer = data[0]
    Customer.where(name: customer).first_or_create
  end
end
