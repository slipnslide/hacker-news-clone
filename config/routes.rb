Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  get 'sessions/new'

  resources :comments
  resources :posts
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
