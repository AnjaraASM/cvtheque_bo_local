require "test_helper"

class ViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @view = views(:one)
  end

  test "should get index" do
    get views_url, as: :json
    assert_response :success
  end

  test "should create view" do
    assert_difference("View.count") do
      post views_url, params: { view: { cv_id: @view.cv_id, user_id: @view.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show view" do
    get view_url(@view), as: :json
    assert_response :success
  end

  test "should update view" do
    patch view_url(@view), params: { view: { cv_id: @view.cv_id, user_id: @view.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy view" do
    assert_difference("View.count", -1) do
      delete view_url(@view), as: :json
    end

    assert_response :no_content
  end
end
