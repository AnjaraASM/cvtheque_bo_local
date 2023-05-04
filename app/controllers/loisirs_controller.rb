class LoisirsController < ApplicationController
  before_action :set_loisir, only: %i[ show update destroy ]

  # GET /loisirs
  def index
    @loisirs = Loisir.all

    render json: @loisirs
  end

  # GET /loisirs/1
  def show
    render json: @loisir
  end

  # POST /loisirs
  def create
    @loisir = Loisir.new(loisir_params)

    if @loisir.save
      render json: @loisir, status: :created, location: @loisir
    else
      render json: @loisir.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /loisirs/1
  def update
    if @loisir.update(loisir_params)
      render json: @loisir
    else
      render json: @loisir.errors, status: :unprocessable_entity
    end
  end

  # DELETE /loisirs/1
  def destroy
    @loisir.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loisir
      @loisir = Loisir.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loisir_params
      params.permit(:loisir, :cv_id)
    end
end
