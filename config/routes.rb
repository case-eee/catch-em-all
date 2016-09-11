Rails.application.routes.draw do
  root to: "pokemons#index"
  resources :captures, only: [:create]
  resources :games, only: [:create]
end
