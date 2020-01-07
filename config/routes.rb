Rails.application.routes.draw do
  namespace :me do
    resources :investments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
