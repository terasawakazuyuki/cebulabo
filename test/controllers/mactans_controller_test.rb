require 'test_helper'

class MactansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mactan = mactans(:one)
  end

  test "should get index" do
    get mactans_url
    assert_response :success
  end

  test "should get new" do
    get new_mactan_url
    assert_response :success
  end

  test "should create mactan" do
    assert_difference('Mactan.count') do
      post mactans_url, params: { mactan: { hotel_area: @mactan.hotel_area, hotel_image: @mactan.hotel_image, hotel_image_text: @mactan.hotel_image_text, hotel_lank: @mactan.hotel_lank, hotel_name_en: @mactan.hotel_name_en, hotel_name_ja: @mactan.hotel_name_ja } }
    end

    assert_redirected_to mactan_url(Mactan.last)
  end

  test "should show mactan" do
    get mactan_url(@mactan)
    assert_response :success
  end

  test "should get edit" do
    get edit_mactan_url(@mactan)
    assert_response :success
  end

  test "should update mactan" do
    patch mactan_url(@mactan), params: { mactan: { hotel_area: @mactan.hotel_area, hotel_image: @mactan.hotel_image, hotel_image_text: @mactan.hotel_image_text, hotel_lank: @mactan.hotel_lank, hotel_name_en: @mactan.hotel_name_en, hotel_name_ja: @mactan.hotel_name_ja } }
    assert_redirected_to mactan_url(@mactan)
  end

  test "should destroy mactan" do
    assert_difference('Mactan.count', -1) do
      delete mactan_url(@mactan)
    end

    assert_redirected_to mactans_url
  end
end
