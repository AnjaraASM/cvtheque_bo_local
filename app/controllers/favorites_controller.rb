class FavoritesController < ApplicationController
  before_action :set_favorite, only: %i[ show update destroy ]

  # GET /favorites
  def index
    @favorites = Favorite.all

    render json: @favorites
  end

  # GET /favorites/1
  def show
    render json: @favorite
  end

  # POST /favorites
  def create
    @favorite = Favorite.new(favorite_params)
    @administrateur = User.where(role: 'Administrateur')
    @cv = Cv.find_by(id: @favorite.cv_id)

    if @favorite.save

      @userCategorieCv = UserCategorieCv.create(user_id: @favorite.user_id, categorie_cv_id: @cv.categorie_cv_id)
      @userCategorieCv.save

      @administrateur.each do |admin|
        AddFavoriteMailer.with(add_favoris: @favorite, admini: admin).user_favorite.deliver_later
      end
      render json: {favo: @favorite, status: :created, location: @favorite}
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorites/1
  def update
    if @favorite.update(favorite_params)
      render json: @favorite
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorites/1
  def destroy
    @favorite.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite
      @favorite = Favorite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorite_params
      params.permit(:lu, :user_id, :cv_id)
    end
end
