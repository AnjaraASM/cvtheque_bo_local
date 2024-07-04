class RatingsController < ApplicationController
  before_action :set_rating, only: %i[ show update destroy ]

  # GET /ratings
  def index
    @ratings = Rating.all

    render json: @ratings
  end

  # GET /ratings/1
  def show
    render json: @rating
  end

  # POST /ratings
  def create
    @rating = Rating.new(rating_params)

    if @rating.save
      render json: @rating, status: :created, location: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  #Rating selected
  def ratined
    @rating = Rating.where(cv_id: params[:cv_id], user_id: params[:user_id])
    if @rating.exists?
	@Rlast = @rating.last
	puts "===================================#{@rating.last}================================================"
      render json: @Rlast, status: 200
    else
      render json: 'none', status: 203
    end
  end

  # PATCH/PUT /ratings/1
  def update
    if @rating.update(rating_params)
      render json: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rating
      @rating = Rating.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rating_params
      params.permit(:rate, :user_id, :cv_id)
    end
end
