require "test_helper"

class DemandLoginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @demand_login = demand_logins(:one)
  end

  test "should get index" do
    get demand_logins_url, as: :json
    assert_response :success
  end

  test "should create demand_login" do
    assert_difference("DemandLogin.count") do
      post demand_logins_url, params: { demand_login: { description: @demand_login.description, email: @demand_login.email, name: @demand_login.name, object: @demand_login.object } }, as: :json
    end

    assert_response :created
  end

  test "should show demand_login" do
    get demand_login_url(@demand_login), as: :json
    assert_response :success
  end

  test "should update demand_login" do
    patch demand_login_url(@demand_login), params: { demand_login: { description: @demand_login.description, email: @demand_login.email, name: @demand_login.name, object: @demand_login.object } }, as: :json
    assert_response :success
  end

  test "should destroy demand_login" do
    assert_difference("DemandLogin.count", -1) do
      delete demand_login_url(@demand_login), as: :json
    end

    assert_response :no_content
  end
end
