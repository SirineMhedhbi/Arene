require "application_system_test_case"

class ShieldsTest < ApplicationSystemTestCase
  setup do
    @shield = shields(:one)
  end

  test "visiting the index" do
    visit shields_url
    assert_selector "h1", text: "Shields"
  end

  test "should create shield" do
    visit shields_url
    click_on "New shield"

    fill_in "Damage reduction", with: @shield.damage_reduction
    fill_in "Name", with: @shield.name
    click_on "Create Shield"

    assert_text "Shield was successfully created"
    click_on "Back"
  end

  test "should update Shield" do
    visit shield_url(@shield)
    click_on "Edit this shield", match: :first

    fill_in "Damage reduction", with: @shield.damage_reduction
    fill_in "Name", with: @shield.name
    click_on "Update Shield"

    assert_text "Shield was successfully updated"
    click_on "Back"
  end

  test "should destroy Shield" do
    visit shield_url(@shield)
    click_on "Destroy this shield", match: :first

    assert_text "Shield was successfully destroyed"
  end
end
