require "test_helper"

class ProfilIdealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profil_ideal = profil_ideals(:one)
  end

  test "should get index" do
    get profil_ideals_url, as: :json
    assert_response :success
  end

  test "should create profil_ideal" do
    assert_difference("ProfilIdeal.count") do
      post profil_ideals_url, params: { profil_ideal: { description: @profil_ideal.description, lu: @profil_ideal.lu, user_id: @profil_ideal.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show profil_ideal" do
    get profil_ideal_url(@profil_ideal), as: :json
    assert_response :success
  end

  test "should update profil_ideal" do
    patch profil_ideal_url(@profil_ideal), params: { profil_ideal: { description: @profil_ideal.description, lu: @profil_ideal.lu, user_id: @profil_ideal.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy profil_ideal" do
    assert_difference("ProfilIdeal.count", -1) do
      delete profil_ideal_url(@profil_ideal), as: :json
    end

    assert_response :no_content
  end
end
