class ProfilIdealsController < ApplicationController
  before_action :set_profil_ideal, only: %i[ show update destroy ]

  # GET /profil_ideals
  def index
    @profil_ideals = ProfilIdeal.all.reorder('id DESC')

    render json: @profil_ideals
  end

  # GET /profil_ideals/1
  def show
    render json: @profil_ideal
  end

  # POST /profil_ideals
  def create
    @profil_ideal = ProfilIdeal.new(profil_ideal_params)

    if @profil_ideal.save
      render json: @profil_ideal, status: :created, location: @profil_ideal
    else
      render json: @profil_ideal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profil_ideals/1
  def update
    if @profil_ideal.update(profil_ideal_params)
      render json: @profil_ideal
    else
      render json: @profil_ideal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profil_ideals/1
  def destroy
    @profil_ideal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profil_ideal
      @profil_ideal = ProfilIdeal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profil_ideal_params
      params.permit(:description, :user_id, :lu)
    end
end
