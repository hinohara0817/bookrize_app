Rails.application.routes.draw do
  devise_for :users
  get '/signup', to: 'users#new'
  get '/about', to: "static_pages#about"
  root 'static_pages#home'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
