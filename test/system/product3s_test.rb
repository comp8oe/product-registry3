require "application_system_test_case"

class Product3sTest < ApplicationSystemTestCase
  setup do
    @product3 = product3s(:one)
  end

  test "visiting the index" do
    visit product3s_url
    assert_selector "h1", text: "Product3s"
  end

  test "creating a Product3" do
    visit product3s_url
    click_on "New Product3"

    fill_in "Name", with: @product3.name
    fill_in "Price", with: @product3.price
    fill_in "Vendor", with: @product3.vendor
    click_on "Create Product3"

    assert_text "Product3 was successfully created"
    click_on "Back"
  end

  test "updating a Product3" do
    visit product3s_url
    click_on "Edit", match: :first

    fill_in "Name", with: @product3.name
    fill_in "Price", with: @product3.price
    fill_in "Vendor", with: @product3.vendor
    click_on "Update Product3"

    assert_text "Product3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Product3" do
    visit product3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product3 was successfully destroyed"
  end
end
