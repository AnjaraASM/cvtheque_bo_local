class DiplomesController < ApplicationController
  before_action :set_diplome, only: %i[ show update destroy ]

  # GET /diplomes
  def index
    @diplomes = Diplome.all

    render json: @diplomes
  end

  # GET /diplomes/1
  def show
    render json: @diplome
  end

  # POST /diplomes
  def create
    @diplome = Diplome.new(diplome_params)

    if @diplome.save
      render json: @diplome, status: :created, location: @diplome
    else
      render json: @diplome.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /diplomes/1
  def update
    if @diplome.update(diplome_params)
      render json: @diplome
    else
      render json: @diplome.errors, status: :unprocessable_entity
    end
  end

  # DELETE /diplomes/1
  def destroy
    @diplome.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diplome
      @diplome = Diplome.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diplome_params
      params.permit(:ecole, :datecole, :datefinecole, :descriptionecole, :cv_id)
    end
end
