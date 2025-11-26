class Customers::OrderInsightsController < ApplicationController
  def show
    @customer = Customer.find(params[:customer_id])
  end
end