class CategorieCvsController < ApplicationController
  before_action :set_categorie_cv, only: %i[show update destroy]

  # GET /categorie_cvs
  def index
    @categorie_cvs = CategorieCv.all.order(id: :desc)
    render json: @categorie_cvs
  rescue => e
    render json: { error: e.message }, status: :internal_server_error
  end

  # GET /categorie_cvs/count
  def catCounter
    @categorie_count = CategorieCv.count
    render json: { count: @categorie_count }
  rescue => e
    render json: { error: e.message }, status: :internal_server_error
  end

  # GET /categorie_cvs/1
  def show
    @cv_count = @categorie_cv.cv_ids.count
    @cv_ids = @categorie_cv.cv_ids
    @sous_categories = @categorie_cv.sous_category
    render json: { cat: @categorie_cv, counter: @cv_count, cvArr: @cv_ids, sousCategorie: @sous_categories }
  rescue => e
    render json: { error: e.message }, status: :internal_server_error
  end

  # POST /categorie_cvs
  def create
    @categorie_cv = CategorieCv.new(categorie_cv_params)

    if @categorie_cv.save
      render json: @categorie_cv, status: :created, location: @categorie_cv
    else
      render json: @categorie_cv.errors, status: :unprocessable_entity
    end
  rescue => e
    render json: { error: e.message }, status: :internal_server_error
  end

  # PATCH/PUT /categorie_cvs/1
  def update
    if @categorie_cv.update(categorie_cv_params)
      render json: @categorie_cv
    else
      render json: @categorie_cv.errors, status: :unprocessable_entity
    end
  rescue => e
    render json: { error: e.message }, status: :internal_server_error
  end

  # DELETE /categorie_cvs/1
  def destroy
    @categorie_cv.destroy
    head :no_content
  rescue => e
    render json: { error: e.message }, status: :internal_server_error
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_categorie_cv
    @categorie_cv = CategorieCv.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'CategorieCv not found' }, status: :not_found
  end

  # Only allow a list of trusted parameters through.
  def categorie_cv_params
    params.require(:categorie_cv).permit(:categorie, :description)
  end
end