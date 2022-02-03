# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :comments
  # Defines the root path route ("/")
  root "posts#index"

  devise_for :users

  resources :posts do
    resources :comments
  end
end
