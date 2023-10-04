Rails.application.routes.draw do
  resources :authors, only: [:show]
  resources :posts, only: [:index]
  resource :ranking, only: [:show]

  root "posts#index"
end
