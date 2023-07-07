require "test_helper"

class EntretiensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entretien = entretiens(:one)
  end

  test "should get index" do
    get entretiens_url, as: :json
    assert_response :success
  end

  test "should create entretien" do
    assert_difference("Entretien.count") do
      post entretiens_url, params: { entretien: { cv_id: @entretien.cv_id, user_id: @entretien.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show entretien" do
    get entretien_url(@entretien), as: :json
    assert_response :success
  end

  test "should update entretien" do
    patch entretien_url(@entretien), params: { entretien: { cv_id: @entretien.cv_id, user_id: @entretien.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy entretien" do
    assert_difference("Entretien.count", -1) do
      delete entretien_url(@entretien), as: :json
    end

    assert_response :no_content
  end
end
