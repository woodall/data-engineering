class Checkout < ActiveRecord::Base
  belongs_to :upload
  belongs_to :item
  belongs_to :merchant
  belongs_to :customer

  def total
    price = item.item_price
    purchase_count * price
  end
end
