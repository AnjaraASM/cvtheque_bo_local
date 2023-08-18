class SousCategoriesController < ApplicationController
  before_action :set_sous_category, only: %i[ show update destroy ]

  # GET /sous_categories
  def index
    @sous_categories = SousCategory.all

    render json: @sous_categories
  end

  # GET /sous_categories/1
  def show
    @cvSousCat = @sous_category.cv_ids
    @sousCatCouteur = @cvSousCat.count
    render json: {sc: @sous_category, cv: @cvSousCat, countCv: @sousCatCouteur}
  end

  # POST /sous_categories
  def create
    @sous_category = SousCategory.new(sous_category_params)

    if @sous_category.save
      render json: @sous_category, status: :created, location: @sous_category
    else
      render json: @sous_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sous_categories/1
  def update
    if @sous_category.update(sous_category_params)
      render json: @sous_category
    else
      render json: @sous_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sous_categories/1
  def destroy
    @sous_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sous_category
      @sous_category = SousCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sous_category_params
      params.permit(:categorie, :description, :categorie_cv_id)
    end
end
