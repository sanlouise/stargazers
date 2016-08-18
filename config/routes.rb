Rails.application.routes.draw do

  devise_for :astronomers

  root 'pages#home'

  get '/about', to: 'pages#about'
  
  resources :profiles, only: [:show, :edit, :update]

end
