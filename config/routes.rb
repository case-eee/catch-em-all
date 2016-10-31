Rails.application.routes.draw do
  root to: "pokemons#index"
  resources :backpacks, only: [:create]
  resources :games, only: [:create]
end
