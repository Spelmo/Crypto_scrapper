Rails.application.routes.draw do
  root 'home#index'
  post "/", to: "home#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
