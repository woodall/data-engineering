class Checkout < ActiveRecord::Base
  def new
    @checkout = Checkout.new
  end

  def create
  end
end
