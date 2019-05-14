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
  
  	
  	get "/publishers/", to: "publishers#index"
  	get "/publishers/new", to: "publishers#new"

  	get "/games/show", to: "games#show"

end
 