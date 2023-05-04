require "test_helper"

class DiplomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diplome = diplomes(:one)
  end

  test "should get index" do
    get diplomes_url, as: :json
    assert_response :success
  end

  test "should create diplome" do
    assert_difference("Diplome.count") do
      post diplomes_url, params: { diplome: { datecole: @diplome.datecole, descriptionecole: @diplome.descriptionecole, ecole: @diplome.ecole } }, as: :json
    end

    assert_response :created
  end

  test "should show diplome" do
    get diplome_url(@diplome), as: :json
    assert_response :success
  end

  test "should update diplome" do
    patch diplome_url(@diplome), params: { diplome: { datecole: @diplome.datecole, descriptionecole: @diplome.descriptionecole, ecole: @diplome.ecole } }, as: :json
    assert_response :success
  end

  test "should destroy diplome" do
    assert_difference("Diplome.count", -1) do
      delete diplome_url(@diplome), as: :json
    end

    assert_response :no_content
  end
end
