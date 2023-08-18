class ViewsController < ApplicationController
  before_action :set_view, only: %i[ show update destroy ]

  # GET /views
  def index
    @views = View.all

    render json: @views
  end

  # GET /views/1
  def show
    render json: @view
  end

  # POST /views
  def create
    @view = View.new(view_params)

    if @view.save
      render json: @view, status: :created, location: @view
    else
      render json: @view.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_view
      @view = View.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def view_params
      params.require(:view).permit(:cv_id, :user_id)
    end
end
