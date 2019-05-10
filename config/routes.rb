Rails.application.routes.draw do
  get 'users/new'
  get '/signup', to: 'users#new'
  get 'static_pages/home'
  root 'static_pages#home'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
