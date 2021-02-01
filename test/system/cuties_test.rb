require "application_system_test_case"

class CutiesTest < ApplicationSystemTestCase
  setup do
    @cuty = cuties(:one)
  end

  test "visiting the index" do
    visit cuties_url
    assert_selector "h1", text: "Cuties"
  end

  test "creating a Cuty" do
    visit cuties_url
    click_on "New Cuty"

    fill_in "Description", with: @cuty.description
    fill_in "Image", with: @cuty.image
    fill_in "Name", with: @cuty.name
    click_on "Create Cuty"

    assert_text "Cuty was successfully created"
    click_on "Back"
  end

  test "updating a Cuty" do
    visit cuties_url
    click_on "Edit", match: :first

    fill_in "Description", with: @cuty.description
    fill_in "Image", with: @cuty.image
    fill_in "Name", with: @cuty.name
    click_on "Update Cuty"

    assert_text "Cuty was successfully updated"
    click_on "Back"
  end

  test "destroying a Cuty" do
    visit cuties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cuty was successfully destroyed"
  end
end
