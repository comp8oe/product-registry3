require 'test_helper'

class SeihinnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seihinn = seihinns(:one)
  end

  test "should get index" do
    get seihinns_url
    assert_response :success
  end

  test "should get new" do
    get new_seihinn_url
    assert_response :success
  end

  test "should create seihinn" do
    assert_difference('Seihinn.count') do
      post seihinns_url, params: { seihinn: { name: @seihinn.name, price: @seihinn.price, vendor: @seihinn.vendor } }
    end

    assert_redirected_to seihinn_url(Seihinn.last)
  end

  test "should show seihinn" do
    get seihinn_url(@seihinn)
    assert_response :success
  end

  test "should get edit" do
    get edit_seihinn_url(@seihinn)
    assert_response :success
  end

  test "should update seihinn" do
    patch seihinn_url(@seihinn), params: { seihinn: { name: @seihinn.name, price: @seihinn.price, vendor: @seihinn.vendor } }
    assert_redirected_to seihinn_url(@seihinn)
  end

  test "should destroy seihinn" do
    assert_difference('Seihinn.count', -1) do
      delete seihinn_url(@seihinn)
    end

    assert_redirected_to seihinns_url
  end
end
