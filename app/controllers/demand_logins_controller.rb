class DemandLoginsController < ApplicationController
  before_action :set_demand_login, only: %i[ show update destroy ]

  # GET /demand_logins
  def index
    @demand_logins = DemandLogin.all.reorder('id DESC')

    render json: @demand_logins
  end

  def notify
    @notify = DemandLogin.all.where("lu": false).count
    render json: @notify
  end

  # GET /demand_logins/1
  def show
    render json: @demand_login
  end

  def last
    @dem = DemandLogin.last
    render json: @dem
  end

  # POST /demand_logins
  def create
    @demand_login = DemandLogin.new(demand_login_params)
    @administrateur = User.where(role: 'Administrateur')

    if @demand_login.save
      @administrateur.each do |admin|
        DemandeLoginMailer.with(demand_login: @demand_login, admini: admin).demande_login.deliver_later
      end
      render json: @demand_login, status: :created, location: @demand_login
    else
      render json: @demand_login.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /demand_logins/1
  def update
    if @demand_login.update(demand_login_params)
      render json: @demand_login
    else
      render json: @demand_login.errors, status: :unprocessable_entity
    end
  end

  # DELETE /demand_logins/1
  def destroy
    @demand_login.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demand_login
      @demand_login = DemandLogin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def demand_login_params
      params.permit(:name, :email, :object, :description, :lu, :prenom, :site, :priorisation, :post, :numero, :pays, :adresse, :ip => [])
    end
end
