
# config/routes.rb
Rails.application.routes.draw do
  root "posts#index"
  devise_scope :user do
    resources :posts
    get "users", to: "devise/sessions#new"
  end
devise_for :users
end