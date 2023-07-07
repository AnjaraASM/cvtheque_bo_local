class EntretiensController < ApplicationController
  before_action :set_entretien, only: %i[ show update destroy ]

  # GET /entretiens
  def index
    @entretiens = Entretien.all.reorder('id DESC')

    render json: @entretiens
  end

  # GET /entretiens/1
  def show
    render json: @entretien
  end

  # POST /entretiens
  def create
    @entretien = Entretien.new(entretien_params)
    @administrateur = User.where(role: 'Administrateur')

    if @entretien.save
      @administrateur.each do |admin|
        DemandeEntretienMailer.with(demand_entretien: @entretien, admini: admin).demande_entretien.deliver_later
      end
      render json: @entretien, status: :created, location: @entretien
    else
      render json: @entretien.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entretiens/1
  def update
    if @entretien.update(entretien_params)
      render json: @entretien
    else
      render json: @entretien.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entretiens/1
  def destroy
    @entretien.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entretien
      @entretien = Entretien.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entretien_params
      params.permit(:user_id, :cv_id, :lu)
    end
end
