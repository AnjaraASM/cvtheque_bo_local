class CategorieCvsController < ApplicationController
  before_action :set_categorie_cv, only: %i[ show update destroy ]

  # GET /categorie_cvs
  def index
    @categorie_cvs = CategorieCv.all.reorder('id DESC')

    render json: @categorie_cvs
  end

  # GET /categorie_cvs/1
  def show
    @cvCount = @categorie_cv.cv_ids.count
    @cv = @categorie_cv.cv_ids
    render json: {cat: @categorie_cv, counter: @cvCount, cvArr: @cv}
  end

  # POST /categorie_cvs
  def create
    @categorie_cv = CategorieCv.new(categorie_cv_params)

    if @categorie_cv.save
      render json: @categorie_cv, status: :created, location: @categorie_cv
    else
      render json: @categorie_cv.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categorie_cvs/1
  def update
    if @categorie_cv.update(categorie_cv_params)
      render json: @categorie_cv
    else
      render json: @categorie_cv.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categorie_cvs/1
  def destroy
    @categorie_cv.destroy
    cv = @categorie_cv.cv_ids
    cv.delete_all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorie_cv
      @categorie_cv = CategorieCv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categorie_cv_params
      params.permit(:categorie, :description)
    end
end
