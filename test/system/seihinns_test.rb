require "application_system_test_case"

class SeihinnsTest < ApplicationSystemTestCase
  setup do
    @seihinn = seihinns(:one)
  end

  test "visiting the index" do
    visit seihinns_url
    assert_selector "h1", text: "Seihinns"
  end

  test "creating a Seihinn" do
    visit seihinns_url
    click_on "New Seihinn"

    fill_in "Name", with: @seihinn.name
    fill_in "Price", with: @seihinn.price
    fill_in "Vendor", with: @seihinn.vendor
    click_on "Create Seihinn"

    assert_text "Seihinn was successfully created"
    click_on "Back"
  end

  test "updating a Seihinn" do
    visit seihinns_url
    click_on "Edit", match: :first

    fill_in "Name", with: @seihinn.name
    fill_in "Price", with: @seihinn.price
    fill_in "Vendor", with: @seihinn.vendor
    click_on "Update Seihinn"

    assert_text "Seihinn was successfully updated"
    click_on "Back"
  end

  test "destroying a Seihinn" do
    visit seihinns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seihinn was successfully destroyed"
  end
end
