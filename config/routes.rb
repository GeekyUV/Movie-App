Rails.application.routes.draw do
  root 'movies#index'
  resources :movies, only: [:show] do
    get :search, on: :collection
    post :add_to_favorites, on: :collection
  end
  get 'favorites', to: 'movies#favorites', as: 'favorite_movies'
  resources :favorite_movies, only: [:destroy]

end
