Rails.application.routes.draw do
  root 'shops#index'
  resources :dishes
  resources :shops
  post '/callback' => 'webhook#callback'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
