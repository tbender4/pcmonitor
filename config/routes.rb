Rails.application.routes.draw do
  get 'static_pages/about'
  root 'static_pages#about'
  resources :users
  resources :relays
  resources :devices
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
