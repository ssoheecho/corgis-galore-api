Rails.application.routes.draw do
  namespace :api do
    resources :corgis, only: [:index]
    resources :comments
  end
end
