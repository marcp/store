require 'test_helper'

class GiftBagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gift_bag = gift_bags(:one)
  end

  test "should get index" do
    get gift_bags_url
    assert_response :success
  end

  test "should get new" do
    get new_gift_bag_url
    assert_response :success
  end

  test "should create gift_bag" do
    assert_difference('GiftBag.count') do
      post gift_bags_url, params: { gift_bag: { recipient: @gift_bag.recipient, sender: @gift_bag.sender } }
    end

    assert_redirected_to gift_bag_url(GiftBag.last)
  end

  test "should show gift_bag" do
    get gift_bag_url(@gift_bag)
    assert_response :success
  end

  test "should get edit" do
    get edit_gift_bag_url(@gift_bag)
    assert_response :success
  end

  test "should update gift_bag" do
    patch gift_bag_url(@gift_bag), params: { gift_bag: { recipient: @gift_bag.recipient, sender: @gift_bag.sender } }
    assert_redirected_to gift_bag_url(@gift_bag)
  end

  test "should destroy gift_bag" do
    assert_difference('GiftBag.count', -1) do
      delete gift_bag_url(@gift_bag)
    end

    assert_redirected_to gift_bags_url
  end
end
