class CvsController < ApplicationController
  before_action :set_cv, only: %i[ show update destroy ]

  # GET /cvs
  def index
    @cvs = Cv.all.reorder('id DESC')
    
    render json: @cvs
  end

  # GET /cvs/1
  def show
    @exp = @cv.experience_ids
    @diplo = @cv.diplome_ids
    @langage = @cv.langage_ids
    @loisir = @cv.loisir_ids
    @info = @cv.informatique_ids
    render json: {cv: @cv, exp: @exp, diplo: @diplo, langage: @langage, loisir: @loisir, info: @info}
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

    # Only allow a list of trusted parameters through.
    def cv_params
      params.permit(:photo, :nomPrenom, :email, :telephone, :age, 
      :adresse, :facebook, :linkedin, :descriptionProfile, :status, 
      :categorie_cv_id, :disponibility, 
      :photo, :facebook, :linkedin, :aExperience, :nationalite)
    end
end
