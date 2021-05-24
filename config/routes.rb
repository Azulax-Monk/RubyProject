Rails.application.routes.draw do
  #resources :comments
  resources :posts
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :posts do
    resources :comments
  end

  root to: "posts#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
