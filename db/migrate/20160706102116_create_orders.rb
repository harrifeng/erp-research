class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :number
      t.string :status
      t.string :trade_number
      t.string :shop_code
      t.string :customer_code
      t.string :order_type
      t.string :sale_type
      t.string :channel
      t.date :order_date
      t.date :pay_date

      t.timestamps
    end
  end
end
