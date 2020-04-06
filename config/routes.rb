Rails.application.routes.draw do

  get 'travel/index'
  get 'details/index'
  get 'home/index'

  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
 get 'logout' => 'sessions#destroy'

  resources :responses

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
