class AddPayTimeToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :pay_time, :timestamp
  end
end
