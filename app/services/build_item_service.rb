module BuildItemService

  def self.call(data)
    description = data[1]
    price = data[2].to_i

    Item.where(item_description: description, item_price: price).first_or_create
  end
end
