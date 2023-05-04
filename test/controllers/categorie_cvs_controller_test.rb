require "test_helper"

class CategorieCvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categorie_cv = categorie_cvs(:one)
  end

  test "should get index" do
    get categorie_cvs_url, as: :json
    assert_response :success
  end

  test "should create categorie_cv" do
    assert_difference("CategorieCv.count") do
      post categorie_cvs_url, params: { categorie_cv: { categorie: @categorie_cv.categorie, description: @categorie_cv.description } }, as: :json
    end

    assert_response :created
  end

  test "should show categorie_cv" do
    get categorie_cv_url(@categorie_cv), as: :json
    assert_response :success
  end

  test "should update categorie_cv" do
    patch categorie_cv_url(@categorie_cv), params: { categorie_cv: { categorie: @categorie_cv.categorie, description: @categorie_cv.description } }, as: :json
    assert_response :success
  end

  test "should destroy categorie_cv" do
    assert_difference("CategorieCv.count", -1) do
      delete categorie_cv_url(@categorie_cv), as: :json
    end

    assert_response :no_content
  end
end
