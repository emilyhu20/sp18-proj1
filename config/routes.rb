Rails.application.routes.draw do
  patch "/", to: "pokemons#capture", as: "capture"
  patch "/trainers", to: "pokemons#damage", as: "damage"
  get "/trainers/new", to: "pokemons#new", as: "pokemons"
  post "trainers/new", to: "pokemons#create"
  devise_for :trainers
  root to: "home#index"
  resources :trainers
end
