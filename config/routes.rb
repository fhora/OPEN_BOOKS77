Rails.application.routes.draw do
  # get 'reservations/new'
  # get 'reservations/create'
  # get 'reservations/show'
  devise_for :users
  root to: "pages#home"

  resources :books, only: %i[show index new create edit update destroy] do
    resources :reservations, only: %i[new create]
  end
  resources :reservations, only: %i[show destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
