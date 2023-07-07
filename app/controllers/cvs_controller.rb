class CvsController < ApplicationController
  before_action :set_cv, only: %i[ show update destroy ]

  # GET /cvs
  def index
    @cvs = Cv.all.reorder('id DESC')
    
    render json: @cvs
  end

  def cvcounter
    @profile = Cv.all.count
    render json: @profile
  end

  #methode de recherche
  def search 
    @cv = Cv.where("id || nomPrenom LIKE ?", "%#{params[:id] || params[:nomPrenom]}%")

    if @cv && @cv.exists?
      render json: {search: @cv}, status: 200
    else
      render json: {message: "Aucune resultat"}, status: 204
    end

  end

  # Notification Mailer CV publish
  def mailer_publier_cv
    @userCategorieCv = UserCategorieCv.where(categorie_cv_id: @cv.categorie_cv_id)
    @userCategorieCv.each do |catCv|
      @categorie = CategorieCv.find_by(id: @cv.categorie_cv_id)
      @user = User.find_by(id: catCv.user_id)
      UserNotifyCvMailer.with(user: @user, cv: @cv, cat: @categorie).user_new_cv_publish.deliver_later
    end
  end
    

  # GET /cvs/1
  def show
    @exp = @cv.experience_ids
    @diplo = @cv.diplome_ids
    @langage = @cv.langage_ids
    @loisir = @cv.loisir_ids
    @info = @cv.informatique_ids
    @comment = @cv.comment_ids
    render json: {cv: @cv, exp: @exp, diplo: @diplo, langage: @langage, loisir: @loisir, info: @info, comment: @comment}
  end

  # POST /cvs
  def create
    @cv = Cv.new(cv_params)

    if @cv.save
      render json: @cv, status: :created, location: @cv
    else
      render json: @cv.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cvs/1
  def update
    if @cv.update(cv_params)
      if @cv.status == true 
        mailer_publier_cv
      end
      render json: @cv
    else
      render json: @cv.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cvs/1
  def destroy
    @cv.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cv
      @cv = Cv.find(params[:id])
    end

    private

    # Only allow a list of trusted parameters through.
    def cv_params
      params.permit(:photo, :nomPrenom, :email, :telephone, :age, 
      :adresse, :facebook, :linkedin, :descriptionProfile, :status, 
      :categorie_cv_id, :disponibility, 
      :photo, :facebook, :linkedin, :aExperience, :nationalite, :contrat)
    end
end
