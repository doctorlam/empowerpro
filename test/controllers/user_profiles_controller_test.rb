require 'test_helper'

class UserProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_profile = user_profiles(:one)
  end

  test "should get index" do
    get user_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_user_profile_url
    assert_response :success
  end

  test "should create user_profile" do
    assert_difference('UserProfile.count') do
      post user_profiles_url, params: { user_profile: { city: @user_profile.city, contact_time: @user_profile.contact_time, credit_assessment: @user_profile.credit_assessment, credit_debt: @user_profile.credit_debt, credit_score_above: @user_profile.credit_score_above, email: @user_profile.email, first_name: @user_profile.first_name, last_name: @user_profile.last_name, phone_number: @user_profile.phone_number, sponsor_id: @user_profile.sponsor_id, state: @user_profile.state, street: @user_profile.street, tos: @user_profile.tos, zip: @user_profile.zip } }
    end

    assert_redirected_to user_profile_url(UserProfile.last)
  end

  test "should show user_profile" do
    get user_profile_url(@user_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_profile_url(@user_profile)
    assert_response :success
  end

  test "should update user_profile" do
    patch user_profile_url(@user_profile), params: { user_profile: { city: @user_profile.city, contact_time: @user_profile.contact_time, credit_assessment: @user_profile.credit_assessment, credit_debt: @user_profile.credit_debt, credit_score_above: @user_profile.credit_score_above, email: @user_profile.email, first_name: @user_profile.first_name, last_name: @user_profile.last_name, phone_number: @user_profile.phone_number, sponsor_id: @user_profile.sponsor_id, state: @user_profile.state, street: @user_profile.street, tos: @user_profile.tos, zip: @user_profile.zip } }
    assert_redirected_to user_profile_url(@user_profile)
  end

  test "should destroy user_profile" do
    assert_difference('UserProfile.count', -1) do
      delete user_profile_url(@user_profile)
    end

    assert_redirected_to user_profiles_url
  end
end
