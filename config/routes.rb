Rails.application.routes.draw do
  devise_for :astronomers
  root 'pages#home'
end
