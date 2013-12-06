class BuildItemService

  def self.call(data)
    description = data[1]
    price = data[2].to_i

    begin
      Item.where(item_description: description, item_price: price).first_or_create
    rescue
      raise "Sorry, wrong file format."
    end
  end
end
