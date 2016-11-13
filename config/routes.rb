Rails.application.routes.draw do
  resources :mentes
  resources :mentors
  root "home#index"
  get "/maps" => "home#maps"

  resources :mentors do
    resources :likes, only: [:create, :destroy]
  end
  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
