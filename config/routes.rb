Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :powers
    resources :fighters
  end
end
