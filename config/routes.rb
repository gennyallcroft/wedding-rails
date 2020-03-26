Rails.application.routes.draw do
  get 'travel/index'
  get 'details/index'
  get 'home/index'

  resources :responses

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
