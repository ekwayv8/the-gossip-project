Rails.application.routes.draw do
  get 'static_pages/team'
  get 'static_pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Chemin vers la page d'acceuil
  get 'static_pages/home'
  # Chemin d'accès vers la page statique de présentation de la team
  get 'static_pages/team', to: 'static_pages#team'
  # Chemin d'accès vers la page statique de Contact
  get 'static_pages/contact', to: 'static_pages#contact'

  # Chemin d'accès vers landingpage de Bienvenue
  get 'welcome/:first_name', to: 'welcome#first_name'




end
