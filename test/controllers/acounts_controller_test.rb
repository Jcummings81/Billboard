require 'test_helper'

class AcountsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get acounts_index_url
    assert_response :success
  end

  test "should get show" do
    get acounts_show_url
    assert_response :success
  end

  test "should get new" do
    get acounts_new_url
    assert_response :success
  end

  test "should get edit" do
    get acounts_edit_url
    assert_response :success
  end

end
