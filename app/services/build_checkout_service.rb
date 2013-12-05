module BuildCheckoutService

  def self.call(objects, upload)
    objects.each do |object|
      Checkout.find_by_id(object[:checkout][:id] ).
        update_attributes(
          upload_id:      upload[:id],
          customer_id:    object[:customer][:id],
          item_id:        object[:item][:id],
          merchant_id:    object[:merchant][:id]
        )
    end
  end
end
