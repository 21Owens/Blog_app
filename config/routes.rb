Rails.application.routes.draw do

  resources :posts

  devise_for :users, controllers: { sessions: "users/sessions" }
  get "users/:id" => "users#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "posts#index"
end
