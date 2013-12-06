class BuildCheckoutService

  def self.call(objects, upload)
    objects.each do |object|
      customer_id = object[0].id
      item_id     = object[1].id
      merchant_id = object[2].id
      checkout_id = object[3].id

      Checkout.find_by_id(checkout_id ).
        update_attributes(
          upload_id:      upload.id,
          customer_id:    customer_id,
          item_id:        item_id,
          merchant_id:    merchant_id
        )
    end
  end
end
