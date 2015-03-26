Rails.application.routes.draw do
  resources :users
  resources :topics, only: [:index]
  get "auth/:provider/callback", to: "users#callback"

  root "topics#index"
end
