Rails.application.routes.draw do
  devise_for :users # ne pas supprimer
  root to: "pages#home"
  namespace :owner do
    resources :animals
  end
  resources :animals, only: %i[index show] do
    resources :bookings, only: %i[create edit update]
  end
  resources :bookings, only: %i[index]
end
