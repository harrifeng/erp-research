require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { channel: @order.channel, customer_code: @order.customer_code, number: @order.number, order_date: @order.order_date, order_type: @order.order_type, pay_date: @order.pay_date, sale_type: @order.sale_type, shop_code: @order.shop_code, status: @order.status, trade_number: @order.trade_number } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { channel: @order.channel, customer_code: @order.customer_code, number: @order.number, order_date: @order.order_date, order_type: @order.order_type, pay_date: @order.pay_date, sale_type: @order.sale_type, shop_code: @order.shop_code, status: @order.status, trade_number: @order.trade_number } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
