require "test_helper"

class JoinTableItemOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get join_table_item_orders_show_url
    assert_response :success
  end
end
