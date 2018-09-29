require "application_system_test_case"

class GoddessesTest < ApplicationSystemTestCase
  setup do
    @goddess = goddesses(:one)
  end

  test "visiting the index" do
    visit goddesses_url
    assert_selector "h1", text: "Goddesses"
  end

  test "creating a Goddess" do
    visit goddesses_url
    click_on "New Goddess"

    fill_in "Info", with: @goddess.Info
    fill_in "Name", with: @goddess.Name
    fill_in "Other", with: @goddess.Other
    fill_in "Pantheon", with: @goddess.Pantheon
    click_on "Create Goddess"

    assert_text "Goddess was successfully created"
    click_on "Back"
  end

  test "updating a Goddess" do
    visit goddesses_url
    click_on "Edit", match: :first

    fill_in "Info", with: @goddess.Info
    fill_in "Name", with: @goddess.Name
    fill_in "Other", with: @goddess.Other
    fill_in "Pantheon", with: @goddess.Pantheon
    click_on "Update Goddess"

    assert_text "Goddess was successfully updated"
    click_on "Back"
  end

  test "destroying a Goddess" do
    visit goddesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Goddess was successfully destroyed"
  end
end
