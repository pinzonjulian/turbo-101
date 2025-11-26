class DashboardController < ApplicationController
  def show
    @orders = Order.where.not(status: :delivered)
  end
end