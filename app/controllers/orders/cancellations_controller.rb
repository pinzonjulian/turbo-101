class Orders::CancellationsController < ApplicationController
  before_action :set_order
  def new
  end

  def create
    @order.update(status: "canceled")
    path = orders_path
    respond_to do |format|
      format.html { redirect_to path }
      format.turbo_stream { render turbo_stream: turbo_stream.action(:visit, path)}
    end
  end

  private

  def set_order
    @order = Order.find(params[:order_id])
  end
end