require "test_helper"

class SousCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sous_category = sous_categories(:one)
  end

  test "should get index" do
    get sous_categories_url, as: :json
    assert_response :success
  end

  test "should create sous_category" do
    assert_difference("SousCategory.count") do
      post sous_categories_url, params: { sous_category: { categorie: @sous_category.categorie, description: @sous_category.description } }, as: :json
    end

    assert_response :created
  end

  test "should show sous_category" do
    get sous_category_url(@sous_category), as: :json
    assert_response :success
  end

  test "should update sous_category" do
    patch sous_category_url(@sous_category), params: { sous_category: { categorie: @sous_category.categorie, description: @sous_category.description } }, as: :json
    assert_response :success
  end

  test "should destroy sous_category" do
    assert_difference("SousCategory.count", -1) do
      delete sous_category_url(@sous_category), as: :json
    end

    assert_response :no_content
  end
end
