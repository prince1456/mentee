Rails.application.routes.draw do
  resources :mentes
  resources :mentors
  root "home#index"
  get "/maps" => "home#maps"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
