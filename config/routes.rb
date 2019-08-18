Rails.application.routes.draw do
	

	devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

	authenticated :user do
		root 'home#index', as: 'authenticated_root'
	end
	
	devise_scope :user do
		root 'devise/sessions#new'
	end

  resources :user_games do 
    put :lfg
  end
	
  resources :authentications, only: [:destroy]

  	resources :users

  	resources :publishers, param: :publisher do		
  		resources :games, param: :game
  	end
  	



  	resolve("Publisher") { route_for(:publisher) }


  	
  	get "/publishers/", to: "publishers#index"
  	get "/publishers/new", to: "publishers#new"
  	get '/publishers/:publisher', to: 'publishers#show', as: 'Publisher'

  	get '/publishers/:publisher/games/:game', to: 'games#show'
    post '/publishers/:publisher/games/:game', to: 'games#show'
    get "/lfg/", to: "games#index"
    post "/publishers/:publisher/games/:game/grouping", to: "games#grouping"
    get "/publishers/:publisher/games/:game/grouping", to: "games#grouping"

    get '/mygames/', to: 'user_games#show'
    
    post '/mygames/',params: :game_id, to: 'user_games#create'
    get '/mygames/:game/edit', to: 'user_games#edit'
    put '/mygames/:game/edit', to: 'user_games#update'
    get '/mygames/:game/mygames/edit', to: 'user_games#update'
    delete '/mygames/:game/edit', to: 'user_games#destroy' 
    post '/mygames/:game/edit', to: 'user_games#destroy'   
 end