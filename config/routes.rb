Rails.application.routes.draw do
	root 'posts#index' , as: 'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about' =>'pages#about', as: 'about'
  resources :posts do
  	resources :comments
end
end