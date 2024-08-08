Rails.application.routes.draw do
  resources :ratings
  resources :profil_ideals
  resources :sous_categories
  resources :views
  resources :entretiens
  resources :favorites
  resources :demand_logins
  resources :comments
  resources :informatiques
  resources :loisirs
  resources :langages
  resources :diplomes
  resources :experiences
  # resources :cvs
  resources :cvs, only: [:index, :show, :create, :update, :destroy]
  resources :categorie_cvs
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html=
  
  # Defines the root path route ("/")
  #Configuration des routes des image en production
  #get 'uploads/*file', to: 'uploads#show'  
  # root "articles#index"

  post "/connection", to: "users#login"
  get "/ratined", to: "ratings#ratined"
  get "/ddemande", to: "demand_logins#last"
  post "/recherche", to: "cvs#candidatsearch"
  get "/notify", to: "demand_logins#notify"
  get '/cvs_pagination', to: 'cvs#cvs_pagination'
  get '/cvs_page', to: 'cvs#cvs_page'
  get '/cvs_count', to: 'cvs#count'
  get "/search", to: "cvs#search"
  get '/searchmultiple', to: 'cvs#searchmultiple'
  get "/cvs_all", to: "cvs#cvs_all"
  get "/cvall", to: "cvs#cvcounter"
  get "/catcounter", to: "categorie_cvs#catCounter"
  get "/usersearch", to: "users#search"
  get "/entretienCounter", to: "entretiens#entretienCounter"
  post "/mdpo", to: "users#mdpo"
  post "/notemail", to: "notification#emailNotification"
end
