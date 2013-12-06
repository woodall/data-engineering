class Item < ActiveRecord::Base
  has_many :uploads, through: :checkouts
  has_many :checkouts
end
