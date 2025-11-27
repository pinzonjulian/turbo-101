class Orders::CancellationsController < ApplicationController
  before_action :set_order
  def new
  end

  def create
    @order.update(status: "canceled")
    redirect_to orders_path
  end

  private

  def set_order
    @order = Order.find(params[:order_id])
  end
end