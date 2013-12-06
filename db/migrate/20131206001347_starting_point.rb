class StartingPoint < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer  "upload_id"
      t.integer  "customer_id"
      t.integer  "merchant_id"
      t.integer  "item_id"
      t.integer  "purchase_count"
      t.timestamps
    end

    create_table :customers do |t|
      t.string   "name"
      t.timestamps
    end

    create_table :items do |t|
      t.string   "item_description"
      t.integer  "item_price"
      t.timestamps
    end

    create_table :merchants do |t|
      t.string   "merchant_name"
      t.string   "merchant_address"
      t.timestamps
    end

    create_table :uploads do |t|
      t.timestamps
    end
  end
end
