class LangagesController < ApplicationController
  before_action :set_langage, only: %i[ show update destroy ]

  # GET /langages
  def index
    @langages = Langage.all

    render json: @langages
  end

  # GET /langages/1
  def show
    render json: @langage
  end

  # POST /langages
  def create
    @langage = Langage.new(langage_params)

    if @langage.save
      render json: @langage, status: :created, location: @langage
    else
      render json: @langage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /langages/1
  def update
    if @langage.update(langage_params)
      render json: @langage
    else
      render json: @langage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /langages/1
  def destroy
    @langage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_langage
      @langage = Langage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def langage_params
      params.permit(:langue, :progresslangue, :cv_id)
    end
end
