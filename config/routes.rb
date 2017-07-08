Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get 'comments/create'

  devise_for :users
  resources :authors
  resources :books do
    resources :comments
  end

  resources :categories

  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
