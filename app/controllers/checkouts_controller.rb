class CheckoutsController < ApplicationController
  def index
    @checkouts = Checkout.all
  end

  def new
    @checkout = Checkout.new
  end

  def create
    file_contents = params[:checkout][:file].read
    if file_contents.present?
      Checkout.create
      redirect_to checkouts_path
      flash[:notice] = "Success."
    else
      render :new
      flash[:notice] = "Sorry, there was an error. Please try again."
    end
  end
end
