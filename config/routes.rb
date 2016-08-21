Rails.application.routes.draw do

  root 'pages#home'

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  devise_for :astronomers
  resources :astronomers

  resources :categories do
    resources :posts
  end

end
