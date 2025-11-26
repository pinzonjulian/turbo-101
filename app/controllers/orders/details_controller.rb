class Orders::DetailsController < ApplicationController
  def show
    @order = Order.find(params[:order_id])
  end
end