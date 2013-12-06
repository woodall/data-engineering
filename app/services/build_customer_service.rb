class BuildCustomerService

  def self.call(data)
    customer = data[0]

    begin
      Customer.where(name: customer).first_or_create
    rescue
      raise "Sorry, wrong file format."
    end
  end
end
