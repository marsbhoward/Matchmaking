class UserGamesController < ApplicationController
	def create
		@game = Game.find_by(id: params[:game_id])
		@publisher = Publisher.find_by(name: @game.publisher_name)
		if UserGame.where(game_id: @game.id, user_id: current_user.id).exists? == false
			UserGame.create(user_id: current_user.id, game_id: @game.id, :lfg=>false)
			
			redirect_to '/mygames' ,notice: "game added to your library"	
		else
			redirect_to '/publishers/'+@publisher.name.parameterize+'/games/'+@game.name.parameterize, notice: "game is already in your library"	
		end
		 
	end
	
	def index
	end

	def show
		
	end

	def edit
		@game = Game.find_by(slug: params[:game])
		@usergame = UserGame.find_by(game_id: @game.id, user_id: current_user.id)
	end

	def update
		@game = Game.find_by(slug: params[:game])
		@usergame = UserGame.where(game_id: @game.id, user_id: current_user.id)
		@usergame.update(:lfg => params[:lfg])
		
		redirect_to '/mygames', notice: "your setting was saved"	
					
	end

	def destroy
		@game = Game.find_by(slug: params[:game])
		@usergame = UserGame.find_by(game_id: @game.id, user_id: current_user.id)
		@usergame.destroy
		redirect_to '/mygames', notice: "game was deleted from your library"
	end
end
