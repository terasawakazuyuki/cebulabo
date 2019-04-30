require "application_system_test_case"

class OthersTest < ApplicationSystemTestCase
  setup do
    @other = others(:one)
  end

  test "visiting the index" do
    visit others_url
    assert_selector "h1", text: "Others"
  end

  test "creating a Other" do
    visit others_url
    click_on "New Other"

    fill_in "Hotel area", with: @other.hotel_area
    fill_in "Hotel image", with: @other.hotel_image
    fill_in "Hotel image text", with: @other.hotel_image_text
    fill_in "Hotel lank", with: @other.hotel_lank
    fill_in "Hotel name en", with: @other.hotel_name_en
    fill_in "Hotel name ja", with: @other.hotel_name_ja
    click_on "Create Other"

    assert_text "Other was successfully created"
    click_on "Back"
  end

  test "updating a Other" do
    visit others_url
    click_on "Edit", match: :first

    fill_in "Hotel area", with: @other.hotel_area
    fill_in "Hotel image", with: @other.hotel_image
    fill_in "Hotel image text", with: @other.hotel_image_text
    fill_in "Hotel lank", with: @other.hotel_lank
    fill_in "Hotel name en", with: @other.hotel_name_en
    fill_in "Hotel name ja", with: @other.hotel_name_ja
    click_on "Update Other"

    assert_text "Other was successfully updated"
    click_on "Back"
  end

  test "destroying a Other" do
    visit others_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Other was successfully destroyed"
  end
end
