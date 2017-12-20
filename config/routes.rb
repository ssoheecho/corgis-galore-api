Rails.application.routes.draw do
  namespace :api do
    resources :corgis, only: [:index]
  end
end
