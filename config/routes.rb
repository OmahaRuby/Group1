Rails.application.routes.draw do
  resources :users
  resources :topics
  get "auth/:provider/callback", to: "users#callback"

  root "topic#index"
end
