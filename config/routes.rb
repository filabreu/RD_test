Rails.application.routes.draw do
  resources :contacts
  resources :queries

  root "contacts#index"
end
