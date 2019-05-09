Rails.application.routes.draw do
	

	devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

	authenticated :user do
		root 'home#index', as: 'authenticated_root'
	end
	devise_scope :user do
		root 'devise/sessions#new'
	end

	resources :authentications, only: [:destroy]

  	resources :users
  	resources :games
  	resources :publishers
  
  	get "/users/games", to: "users#games"
  	get "/publishers/index", to: "publishers#index"

end
 