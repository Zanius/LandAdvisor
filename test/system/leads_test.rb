require "application_system_test_case"

class LeadsTest < ApplicationSystemTestCase
  setup do
    @lead = leads(:one)
  end

  test "visiting the index" do
    visit leads_url
    assert_selector "h1", text: "Leads"
  end

  test "creating a Lead" do
    visit leads_url
    click_on "New Lead"

    fill_in "Name", with: @lead.name
    fill_in "Parcel city", with: @lead.parcel_city
    fill_in "Parcel county", with: @lead.parcel_county
    fill_in "Parcel street", with: @lead.parcel_street
    fill_in "Parcel street2", with: @lead.parcel_street2
    fill_in "Parcel zip", with: @lead.parcel_zip
    fill_in "Phone", with: @lead.phone
    click_on "Create Lead"

    assert_text "Lead was successfully created"
    click_on "Back"
  end

  test "updating a Lead" do
    visit leads_url
    click_on "Edit", match: :first

    fill_in "Name", with: @lead.name
    fill_in "Parcel city", with: @lead.parcel_city
    fill_in "Parcel county", with: @lead.parcel_county
    fill_in "Parcel street", with: @lead.parcel_street
    fill_in "Parcel street2", with: @lead.parcel_street2
    fill_in "Parcel zip", with: @lead.parcel_zip
    fill_in "Phone", with: @lead.phone
    click_on "Update Lead"

    assert_text "Lead was successfully updated"
    click_on "Back"
  end

  test "destroying a Lead" do
    visit leads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lead was successfully destroyed"
  end
end
