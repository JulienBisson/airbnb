Rails.application.routes.draw do
  devise_for :users # ne pas supprimer
  root to: "pages#home"
end
