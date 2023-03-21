Rails.application.routes.draw do
  resources :vocations
  resources :vocation
  namespace :api, defaults: { format: :json } do
    resources :powers
    resources :fighters
  end
end
