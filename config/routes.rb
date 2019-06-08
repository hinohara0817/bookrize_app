Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users, :controllers => {
    :sessions => 'users/sessions',
  }
  get '/signup', to: 'users#new'
  get '/about', to: "static_pages#about"
  root 'static_pages#home'
  resources :users, only: [:show, :index]
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
