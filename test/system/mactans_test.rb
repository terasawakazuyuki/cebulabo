require "application_system_test_case"

class MactansTest < ApplicationSystemTestCase
  setup do
    @mactan = mactans(:one)
  end

  test "visiting the index" do
    visit mactans_url
    assert_selector "h1", text: "Mactans"
  end

  test "creating a Mactan" do
    visit mactans_url
    click_on "New Mactan"

    fill_in "Hotel area", with: @mactan.hotel_area
    fill_in "Hotel image", with: @mactan.hotel_image
    fill_in "Hotel image text", with: @mactan.hotel_image_text
    fill_in "Hotel lank", with: @mactan.hotel_lank
    fill_in "Hotel name en", with: @mactan.hotel_name_en
    fill_in "Hotel name ja", with: @mactan.hotel_name_ja
    click_on "Create Mactan"

    assert_text "Mactan was successfully created"
    click_on "Back"
  end

  test "updating a Mactan" do
    visit mactans_url
    click_on "Edit", match: :first

    fill_in "Hotel area", with: @mactan.hotel_area
    fill_in "Hotel image", with: @mactan.hotel_image
    fill_in "Hotel image text", with: @mactan.hotel_image_text
    fill_in "Hotel lank", with: @mactan.hotel_lank
    fill_in "Hotel name en", with: @mactan.hotel_name_en
    fill_in "Hotel name ja", with: @mactan.hotel_name_ja
    click_on "Update Mactan"

    assert_text "Mactan was successfully updated"
    click_on "Back"
  end

  test "destroying a Mactan" do
    visit mactans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mactan was successfully destroyed"
  end
end
