Rails.application.routes.draw do
  devise_for :users
  resources :users
  # devise_for :users
	root 'posts#index' , as: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about' =>'pages#about', as: 'about'
  # resource :session

  resources :posts do
	  resources :comments
  end
end