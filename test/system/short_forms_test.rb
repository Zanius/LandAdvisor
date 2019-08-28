require "application_system_test_case"

class ShortFormsTest < ApplicationSystemTestCase
  setup do
    @short_form = short_forms(:one)
  end

  test "visiting the index" do
    visit short_forms_url
    assert_selector "h1", text: "Short Forms"
  end

  test "creating a Short form" do
    visit short_forms_url
    click_on "New Short Form"

    fill_in "Name", with: @short_form.name
    fill_in "Parcel city", with: @short_form.parcel_city
    fill_in "Parcel county", with: @short_form.parcel_county
    fill_in "Parcel street", with: @short_form.parcel_street
    fill_in "Parcel street2", with: @short_form.parcel_street2
    fill_in "Parcel zip", with: @short_form.parcel_zip
    fill_in "Phone", with: @short_form.phone
    click_on "Create Short form"

    assert_text "Short form was successfully created"
    click_on "Back"
  end

  test "updating a Short form" do
    visit short_forms_url
    click_on "Edit", match: :first

    fill_in "Name", with: @short_form.name
    fill_in "Parcel city", with: @short_form.parcel_city
    fill_in "Parcel county", with: @short_form.parcel_county
    fill_in "Parcel street", with: @short_form.parcel_street
    fill_in "Parcel street2", with: @short_form.parcel_street2
    fill_in "Parcel zip", with: @short_form.parcel_zip
    fill_in "Phone", with: @short_form.phone
    click_on "Update Short form"

    assert_text "Short form was successfully updated"
    click_on "Back"
  end

  test "destroying a Short form" do
    visit short_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Short form was successfully destroyed"
  end
end
