require "test_helper"

class LoisirsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loisir = loisirs(:one)
  end

  test "should get index" do
    get loisirs_url, as: :json
    assert_response :success
  end

  test "should create loisir" do
    assert_difference("Loisir.count") do
      post loisirs_url, params: { loisir: { loisir: @loisir.loisir } }, as: :json
    end

    assert_response :created
  end

  test "should show loisir" do
    get loisir_url(@loisir), as: :json
    assert_response :success
  end

  test "should update loisir" do
    patch loisir_url(@loisir), params: { loisir: { loisir: @loisir.loisir } }, as: :json
    assert_response :success
  end

  test "should destroy loisir" do
    assert_difference("Loisir.count", -1) do
      delete loisir_url(@loisir), as: :json
    end

    assert_response :no_content
  end
end
