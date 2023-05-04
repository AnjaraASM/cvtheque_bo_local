require "test_helper"

class CvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cv = cvs(:one)
  end

  test "should get index" do
    get cvs_url, as: :json
    assert_response :success
  end

  test "should create cv" do
    assert_difference("Cv.count") do
      post cvs_url, params: { cv: { adresse: @cv.adresse, age: @cv.age, descriptionProfile: @cv.descriptionProfile, diplome: @cv.diplome, email: @cv.email, experience: @cv.experience, facebook: @cv.facebook, informatique: @cv.informatique, langue: @cv.langue, linkedin: @cv.linkedin, loisir: @cv.loisir, nomPrenom: @cv.nomPrenom, status: @cv.status, telephone: @cv.telephone } }, as: :json
    end

    assert_response :created
  end

  test "should show cv" do
    get cv_url(@cv), as: :json
    assert_response :success
  end

  test "should update cv" do
    patch cv_url(@cv), params: { cv: { adresse: @cv.adresse, age: @cv.age, descriptionProfile: @cv.descriptionProfile, diplome: @cv.diplome, email: @cv.email, experience: @cv.experience, facebook: @cv.facebook, informatique: @cv.informatique, langue: @cv.langue, linkedin: @cv.linkedin, loisir: @cv.loisir, nomPrenom: @cv.nomPrenom, status: @cv.status, telephone: @cv.telephone } }, as: :json
    assert_response :success
  end

  test "should destroy cv" do
    assert_difference("Cv.count", -1) do
      delete cv_url(@cv), as: :json
    end

    assert_response :no_content
  end
end
