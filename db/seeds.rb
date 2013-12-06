upload      = Upload.create()

customer    = Customer.create(name: 'Dave')
customer_2  = Customer.create(name: 'Dan')

item        = Item.create(item_description: 'bag', item_price: 2.3)
item_2      = Item.create(item_description: 'box', item_price: 2.3)

merchant    = Merchant.create(merchant_name: 'baggers', merchant_address: '123 main')
merchant_2  = Merchant.create(merchant_name: 'boxers', merchant_address: '123 broadway')

checkout    = Checkout.create( upload_id: upload.id, customer_id: customer.id, merchant_id: merchant.id, item_id: item.id, purchase_count: 2)
checkout_2  = Checkout.create( upload_id: upload.id, customer_id: customer_2.id, merchant_id: merchant_2.id, item_id: item_2.id, purchase_count: 2)
checkout_3  = Checkout.create( upload_id: upload.id, customer_id: customer.id, merchant_id: merchant_2.id, item_id: item.id, purchase_count: 2)
