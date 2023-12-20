require "application_system_test_case"

class GalaxiesTest < ApplicationSystemTestCase
  setup do
    @galaxy = galaxies(:one)
  end

  test "visiting the index" do
    visit galaxies_url
    assert_selector "h1", text: "Galaxies"
  end

  test "should create galaxy" do
    visit galaxies_url
    click_on "New galaxy"

    fill_in "Name", with: @galaxy.name
    click_on "Create Galaxy"

    assert_text "Galaxy was successfully created"
    click_on "Back"
  end

  test "should update Galaxy" do
    visit galaxy_url(@galaxy)
    click_on "Edit this galaxy", match: :first

    fill_in "Name", with: @galaxy.name
    click_on "Update Galaxy"

    assert_text "Galaxy was successfully updated"
    click_on "Back"
  end

  test "should destroy Galaxy" do
    visit galaxy_url(@galaxy)
    click_on "Destroy this galaxy", match: :first

    assert_text "Galaxy was successfully destroyed"
  end
end
