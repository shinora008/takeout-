Rails.application.routes.draw do
  get 'dishes/new'
  get 'dishes/create'
  get 'dishes/show'
  get 'dishes/index'
  root 'shops#index'
  resources :dishes
  resources :shops
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
