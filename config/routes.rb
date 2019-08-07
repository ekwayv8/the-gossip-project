Rails.application.routes.draw do
  

  resources :gossip, only: [:index, :new, :create, :show]
  
  #Chemin vers la page d'acceuil qui retourne tous les gossips (nom de l'auteur et le titre de ces derniers)
  get '/', to: 'gossip#index'

  #Chemin d'accès permettant d'afficher la page des auteurs
  get 'user/:user_id', to: 'user#show', as: 'show_user'
  
  # Chemin d'accès vers la page statique de présentation de la team
  get '/team', to: 'static_pages#team'
  # Chemin d'accès vers la page statique de Contact
  get '/contact', to: 'static_pages#contact'

  # Chemin d'accès vers la landing page de Bienvenue personnalisée
  get 'welcome/:first_name', to: 'welcome#first_name'




end
