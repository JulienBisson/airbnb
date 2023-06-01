Rails.application.routes.draw do
  devise_for :users # ne pas supprimer
  root to: "pages#home"
  namespace :owner do
    get 'bookings/accept'
    get 'bookings/decline'
    resources :animals
    resources :bookings, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
  resources :animals, only: %i[index show] do
    resources :bookings, only: %i[create edit update]
  end
  resources :bookings, only: %i[index]
end
