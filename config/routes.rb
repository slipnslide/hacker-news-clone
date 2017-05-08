Rails.application.routes.draw do
  resources :posts
	resources :users
	resources :comments
	resources :sessions, only: [:new, :create, :destroy]
	root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
