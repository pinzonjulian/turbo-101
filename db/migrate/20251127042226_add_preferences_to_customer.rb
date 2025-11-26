class AddPreferencesToCustomer < ActiveRecord::Migration[8.1]
  def change
    add_column :customers, :preferences, :string
  end
end
