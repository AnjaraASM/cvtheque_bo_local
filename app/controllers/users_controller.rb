class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]

  # GET /users
  def index
    @users = User.all.reorder('id DESC')

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token, authentication_token: @user.authentication_token, id: @user.id}, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  # LOGGING IN
  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
        token = encode_token({user_id: @user.id})
        render json: {user: @user, token: token}, status: :created
    else
        render json: {error: "E-mail ou mot de passe incorrect"}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:name, :email, :role, :expire, :password, :authentication_token )
    end
end
