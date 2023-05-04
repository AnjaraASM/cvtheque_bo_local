class InformatiquesController < ApplicationController
  before_action :set_informatique, only: %i[ show update destroy ]

  # GET /informatiques
  def index
    @informatiques = Informatique.all

    render json: @informatiques
  end

  # GET /informatiques/1
  def show
    render json: @informatique
  end

  # POST /informatiques
  def create
    @informatique = Informatique.new(informatique_params)

    if @informatique.save
      render json: @informatique, status: :created, location: @informatique
    else
      render json: @informatique.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /informatiques/1
  def update
    if @informatique.update(informatique_params)
      render json: @informatique
    else
      render json: @informatique.errors, status: :unprocessable_entity
    end
  end

  # DELETE /informatiques/1
  def destroy
    @informatique.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informatique
      @informatique = Informatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def informatique_params
      params.permit(:logiciel, :progressinfo, :cv_id)
    end
end
