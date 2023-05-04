require "test_helper"

class InformatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @informatique = informatiques(:one)
  end

  test "should get index" do
    get informatiques_url, as: :json
    assert_response :success
  end

  test "should create informatique" do
    assert_difference("Informatique.count") do
      post informatiques_url, params: { informatique: { logiciel: @informatique.logiciel, progressinfo: @informatique.progressinfo } }, as: :json
    end

    assert_response :created
  end

  test "should show informatique" do
    get informatique_url(@informatique), as: :json
    assert_response :success
  end

  test "should update informatique" do
    patch informatique_url(@informatique), params: { informatique: { logiciel: @informatique.logiciel, progressinfo: @informatique.progressinfo } }, as: :json
    assert_response :success
  end

  test "should destroy informatique" do
    assert_difference("Informatique.count", -1) do
      delete informatique_url(@informatique), as: :json
    end

    assert_response :no_content
  end
end
