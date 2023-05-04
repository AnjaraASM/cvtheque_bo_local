require "test_helper"

class LangagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @langage = langages(:one)
  end

  test "should get index" do
    get langages_url, as: :json
    assert_response :success
  end

  test "should create langage" do
    assert_difference("Langage.count") do
      post langages_url, params: { langage: { langue: @langage.langue, progresslangue: @langage.progresslangue } }, as: :json
    end

    assert_response :created
  end

  test "should show langage" do
    get langage_url(@langage), as: :json
    assert_response :success
  end

  test "should update langage" do
    patch langage_url(@langage), params: { langage: { langue: @langage.langue, progresslangue: @langage.progresslangue } }, as: :json
    assert_response :success
  end

  test "should destroy langage" do
    assert_difference("Langage.count", -1) do
      delete langage_url(@langage), as: :json
    end

    assert_response :no_content
  end
end
