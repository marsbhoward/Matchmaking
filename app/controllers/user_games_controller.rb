class UserGamesController < ApplicationController
	def create
		@user = current_user
		@game = Game.find_by(id: params[:game_id])
		if UserGame.where(game_id: @game.id).exists? == false
			UserGame.create(user_id: @user.id, game_id: @game.id, :lfg=>false)
			redirect_to '/mygames',	notice: "new game created"
		else
			redirect_to '/mygames', notice: "game is already in your library"	
		end
		 
	end

	def show
		### adds all games too 1 list
		@user = current_user
	end

	def edit
		@game = Game.find_by(slug: params[:game])
		@user = current_user
		@usergame = UserGame.find_by(game_id: @game.id)
	end

	def update
		params[:grouped]
		@game = Game.find_by(slug: params[:game])
		@usergame = UserGame.find_by(game_id: @game.id)
		UserGame.update_all(:lfg => params[:grouped])

		redirect_to '/mygames', notice: "your setting was saved"	
	end

	def destroy
		@game = Game.find_by(slug: params[:game])
		@usergame = UserGame.find_by(game_id: @game.id)
		@usergame.destroy

		redirect_to '/mygames', notice: "game was deleted from your library"
	end

end
