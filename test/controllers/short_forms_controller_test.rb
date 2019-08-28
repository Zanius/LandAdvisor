require 'test_helper'

class ShortFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @short_form = short_forms(:one)
  end

  test "should get index" do
    get short_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_short_form_url
    assert_response :success
  end

  test "should create short_form" do
    assert_difference('ShortForm.count') do
      post short_forms_url, params: { short_form: { name: @short_form.name, parcel_city: @short_form.parcel_city, parcel_county: @short_form.parcel_county, parcel_street: @short_form.parcel_street, parcel_street2: @short_form.parcel_street2, parcel_zip: @short_form.parcel_zip, phone: @short_form.phone } }
    end

    assert_redirected_to short_form_url(ShortForm.last)
  end

  test "should show short_form" do
    get short_form_url(@short_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_short_form_url(@short_form)
    assert_response :success
  end

  test "should update short_form" do
    patch short_form_url(@short_form), params: { short_form: { name: @short_form.name, parcel_city: @short_form.parcel_city, parcel_county: @short_form.parcel_county, parcel_street: @short_form.parcel_street, parcel_street2: @short_form.parcel_street2, parcel_zip: @short_form.parcel_zip, phone: @short_form.phone } }
    assert_redirected_to short_form_url(@short_form)
  end

  test "should destroy short_form" do
    assert_difference('ShortForm.count', -1) do
      delete short_form_url(@short_form)
    end

    assert_redirected_to short_forms_url
  end
end
