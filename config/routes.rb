Rails.application.routes.draw do
  get 'reservations/new'
  get 'reservations/create'
  devise_for :users
  root to: "pages#home"

  resources :books, only: [:show, :index, :new, :create ] do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
