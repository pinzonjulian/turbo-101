class Order < ApplicationRecord
  belongs_to :customer
  enum :status, %i[received preparing packing ready_for_pickup delivered canceled].index_by(&:itself)

  broadcasts_refreshes_to ->(_) { "dashboard" }

  scope :by_id, ->(id) { where(id:) }
  scope :by_status, ->(status) { where(status:) }
  scope :by_customer_name, ->(name) { joins(:customer).where(customers: { name: }) }
end
