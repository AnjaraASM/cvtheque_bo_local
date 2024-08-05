class CvsController < ApplicationController
  before_action :set_cv, only: %i[ show update destroy ]

  # GET /cvs
  def index
    @cvs = Rails.cache.fetch('cvs', expire_in: 24.hours) do Cv.all.reorder('id DESC').to_a end
    
    render json: @cvs
  end

  # GET / cvs / Pagination
  def cvs_pagination
    page = (params[:page] || 1).to_i
    per_page = (params[:per_page] || 20).to_i

    total_count = Cv.count
    total_pages = (total_count / per_page.to_f).ceil
    offset = (page - 1) * per_page

    cvs = Cv.order('id DESC').limit(per_page).offset(offset)

    render json: {
      cvs: cvs,
      total_pages: total_pages,
      current_page: page,
      per_page: per_page
    }
  end

  # GET / cvs / Pagination2
  def cvs_page
    page = (params[:page] || 1).to_i
    per_page = (params[:per_page] || 20).to_i
    category_id = params[:category_id]

    cvs_scope = Cv.order('id DESC')
    cvs_scope = cvs_scope.where(categorie_cv_id: category_id) if category_id.present? && category_id != '0'

    total_count = cvs_scope.count
    total_pages = (total_count / per_page.to_f).ceil
    offset = (page - 1) * per_page

    cvs = cvs_scope.limit(per_page).offset(offset)

    render json: {
      cvs: cvs,
      total_pages: total_pages,
      current_page: page,
      per_page: per_page
    }
  end
  
  def cvs_all
    cvs = Cv.all.reorder('id DESC').to_a
    render json: @cvs
  end

  def cvcounter
    @profile = Cv.all.count
    render json: @profile
  end
  #route carrierwave environement de production carrierwave 
  def show_photo
  @cv = Cv.find(params[:id])
  @photo = @cv.photos.find_by(filename: params[:photo])

  if @photo
    render 'cvs/show_photo', locals: { photo: @photo }
  else
    render_404
  end
  end

  #methode de recherche par ID
  def search 
    @cv = Cv.where(id: params[:id])

    if @cv && @cv.exists?
      render json: {search: @cv}, status: 200
    else
      render json: {message: "Aucune resultat"}, status: 204
    end

  end

  #methode de recherche par nom
  def searchnom 
    @cv = Cv.where(nom: params[:nom])

    if @cv && @cv.exists?
      render json: {search: @cv}, status: 200
    else
      render json: {message: "Aucune resultat"}, status: 204
    end

  end

  #Recherche multilple
  def searchmultiple
    cv = Cv.all
    cv = cv.where(id: params[:id]) if params[:id].present?
    cv = cv.where(nomPrenom: params[:nomPrenom]) if params[:nomPrenom].present?
    cv = cv.where(nom: params[:nom]) if params[:nom].present?
    cv = cv.where(prenom: params[:prenom]) if params[:prenom].present?
    cv = cv.where(email: params[:email]) if params[:email].present?
    cv = cv.where(adresse: params[:adresse]) if params[:adresse].present?

    if cv
      render json: { searchmultiple: cv }
    else
      render json: { message: 'Aucune resultat' }, status: 204
    end
  end

  #Search par nom et prenom des candidat

  

  #Recherche filtre des candidats

  def candidatsearch
    cv = Cv.all
    cv = cv.where(categorie_cv_id: params[:categorie_cv_id]) if params[:categorie_cv_id].present?
    cv = cv.where(national: params[:national]) if params[:national].present?
    cv = cv.where(aExperience: params[:aExperience]) if params[:aExperience].present?
    cv = cv.where(disponibility: params[:disponibility]) if params[:disponibility].present?
    cv = cv.where(contrat: params[:contrat]) if params[:contrat].present?
    cv = cv.where(sous_category_id: params[:sous_category_id]) if params[:sous_category_id].present?
    cv = cv.where(nationalite: params[:nationalite]) if params[:nationalite].present?
  
    if cv
      render json: { recherche: cv }
    else
      render json: { message: 'Aucune resultat' }, status: 204
    end

  end

  # Notification Mailer CV publish
  def mailer_publier_cv
    @userCategorieCv = UserCategorieCv.where(categorie_cv_id: @cv.categorie_cv_id)
    @userCategorieCv.each do |catCv|
      @categorie = CategorieCv.find_by(id: @cv.categorie_cv_id)
      @user = User.find_by(id: catCv.user_id)
      UserNotifyCvMailer.with(user: @user, cv: @cv, cat: @categorie).user_new_cv_publish.deliver_later
    end
  end
    

  # GET /cvs/1
def show
  cache_key = "cv/#{params[:id]}/show"

  cached_response = Rails.cache.fetch(cache_key, expires_in: 2.minutes) do
    @exp = @cv.experience_ids
    @diplo = @cv.diplome_ids
    @langage = @cv.langage_ids
    @loisir = @cv.loisir_ids
    @info = @cv.informatique_ids
    @comment = @cv.comment_ids
    @rating = Rating.all.count
    @cvRat = @cv.ratings.count

    { cv: @cv, rating: @rating, cvRat: @cvRat, exp: @exp, diplo: @diplo, langage: @langage, loisir: @loisir, info: @info, comment: @comment }
  end

  render json: cached_response
end


  # POST /cvs
  def create
    @cv = Cv.new(cv_params)
    @validation = Cv.where(email: cv_params[:email])
    if @validation.present?
       render json: {message: 'Email deja dans la base de donnée', color: 'alert alert-waring'}, status: 203
    else
    if @cv.save
      render json: @cv, status: :created, location: @cv
    else
      render json: @cv.errors, status: :unprocessable_entity
    end
    end
  end

  # PATCH/PUT /cvs/1
  def update
    if @cv.update(cv_params)
      if @cv.status == true 
        mailer_publier_cv
      end
      render json: @cv
    else
      render json: @cv.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cvs/1
  def destroy
    @cv.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cv
      @cv = Cv.find(params[:id])
    end

    private

    # Only allow a list of trusted parameters through.
    def cv_params
      params.permit(:photo, :nomPrenom, :email, :telephone, :age, 
      :adresse, :facebook, :linkedin, :descriptionProfile, :status, :datedispo, 
      :categorie_cv_id, :disponibility, :national,:resume, :prenom, :pretention,
      :photo, :facebook, :linkedin, :aExperience, :nationalite, :contrat, :sous_category_id, :telephone1, :telephone2)
    end
end
