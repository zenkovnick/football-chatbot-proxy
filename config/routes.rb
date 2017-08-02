Rails.application.routes.draw do
  resources :fixtures
  resources :league_tables
  resources :competitions
  resources :players
  resources :teams
  resources :championships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
