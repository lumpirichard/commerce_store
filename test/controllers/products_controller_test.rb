require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get catalogue" do
    get products_catalogue_url
    assert_response :success
  end

  test "should get view" do
    get products_view_url
    assert_response :success
  end

end
