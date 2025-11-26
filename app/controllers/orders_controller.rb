class OrdersController < ApplicationController
  has_scope :by_id
  has_scope :by_status
  has_scope :by_customer_name

  def index
    set_page_and_extract_portion_from apply_scopes(Order).order(created_at: :desc)
  end
end