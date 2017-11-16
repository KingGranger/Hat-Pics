Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get "/", to: "hat_pics#index", as: "root"
  get "/hat_pics/top", to:"hat_pics#top", as: "top_hats"

  resources :hats
  resources :comments, only: [:create, :destroy]
  resources :ratings, only: [:create, :destroy]
  resources :hat_pics, only: [:show, :new, :create, :destroy, :index]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
