Rails.application.routes.draw do
  
   
  #Chemin vers la page d'acceuil qui retourne tous les gossips (nom de l'auteur et le titre de ces derniers)
  get '/home', to: 'home#index'
  root 'home#index'

  # Chemin d'accès vers la page statique de présentation de la team
  get '/team', to: 'static_pages#team'
  # Chemin d'accès vers la page statique de Contact
  get '/contact', to: 'static_pages#contact'

  # Chemin d'accès vers la landing page de Bienvenue personnalisée
  get 'welcome/:first_name', to: 'welcome#first_name'

  #Chemin permettant d'afficher la page d'un gossip à l'aide de son id
  get 'gossip/:id', to: 'gossip#display_gossip', as:'gossip'


end
