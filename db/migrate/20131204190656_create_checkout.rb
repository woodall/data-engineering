class CreateCheckout < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :purchase_count
      t.timestamps
    end
  end
end
