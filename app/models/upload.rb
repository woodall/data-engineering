class Upload < ActiveRecord::Base
  has_many :checkouts
  has_many :customers,  through: :checkouts
  has_many :merchants,  through: :checkouts
  has_many :items,      through: :checkouts

  def total
    checkouts.inject(0) do |memo, checkout|
      memo += checkout.total
    end
  end
end
