Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :power
    resources :powers
    resources :fighter
    resources :fighters
    resources :vocation
    resources :vocations
  end
end
