Rails.application.routes.draw do
  get 'in_bodies/index'
  get 'in_bodies/show'
  get 'in_bodies/new'
  get 'in_bodies/create'
  get 'in_body/index'
  get 'in_body/show'
  get 'in_body/new'
  get 'in_body/create'
  # Users routes
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords"
  }

  # Nutritionists routes
  devise_for :nutritionists, controllers: {
    sessions: "nutritionists/sessions",
    registrations: "nutritionists/registrations",
    passwords: "nutritionists/passwords"
  }

  # Pages routes
  root to: "pages#home"
  get "/sign_in", to: "pages#sign_in", as: :sign_in
  get "/user_home", to: "pages#user_home", as: :user_home

  # In Body routes
  resources :in_bodies, only: %i[index show new create]
  # resources :in_body, only: %i[index show new create

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
