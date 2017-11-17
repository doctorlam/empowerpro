require 'test_helper'

class SponsorProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sponsor_profile = sponsor_profiles(:one)
  end

  test "should get index" do
    get sponsor_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_sponsor_profile_url
    assert_response :success
  end

  test "should create sponsor_profile" do
    assert_difference('SponsorProfile.count') do
      post sponsor_profiles_url, params: { sponsor_profile: { city: @sponsor_profile.city, contact_time: @sponsor_profile.contact_time, employee_count: @sponsor_profile.employee_count, first_name: @sponsor_profile.first_name, last_name: @sponsor_profile.last_name, organization_name: @sponsor_profile.organization_name, phone_number: @sponsor_profile.phone_number, street: @sponsor_profile.street, tos: @sponsor_profile.tos, zip: @sponsor_profile.zip } }
    end

    assert_redirected_to sponsor_profile_url(SponsorProfile.last)
  end

  test "should show sponsor_profile" do
    get sponsor_profile_url(@sponsor_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_sponsor_profile_url(@sponsor_profile)
    assert_response :success
  end

  test "should update sponsor_profile" do
    patch sponsor_profile_url(@sponsor_profile), params: { sponsor_profile: { city: @sponsor_profile.city, contact_time: @sponsor_profile.contact_time, employee_count: @sponsor_profile.employee_count, first_name: @sponsor_profile.first_name, last_name: @sponsor_profile.last_name, organization_name: @sponsor_profile.organization_name, phone_number: @sponsor_profile.phone_number, street: @sponsor_profile.street, tos: @sponsor_profile.tos, zip: @sponsor_profile.zip } }
    assert_redirected_to sponsor_profile_url(@sponsor_profile)
  end

  test "should destroy sponsor_profile" do
    assert_difference('SponsorProfile.count', -1) do
      delete sponsor_profile_url(@sponsor_profile)
    end

    assert_redirected_to sponsor_profiles_url
  end
end
