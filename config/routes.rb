Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
  }
  root to: "books#index"
  resources :books
  resources :users, only: :show
end
