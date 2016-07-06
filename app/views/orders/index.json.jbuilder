json.array!(@orders) do |order|
  json.extract! order, :id, :number, :status, :trade_number, :shop_code, :customer_code, :order_type, :sale_type, :channel, :order_date, :pay_date
  json.url order_url(order, format: :json)
end
