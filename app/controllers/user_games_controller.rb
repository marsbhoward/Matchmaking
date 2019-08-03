class UserGamesController < ApplicationController
	def create
		@user = current_user
		@game = Game.find_by(id: params[:game_id])
		if UserGame.where(game_id: @game.id, user_id: @user.id).exists? == false
			UserGame.create(id: UserGame.count ,user_id: @user.id, game_id: @game.id, :lfg=>false)
			redirect_to '/mygames',	notice: "new game created"
		else
			redirect_to '/mygames', notice: "game is already in your library"	
		end
		 
	end

	def show
		@user = current_user
	end

	def edit
		@game = Game.find_by(slug: params[:game])
		@user = current_user
		@usergame = UserGame.find_by(game_id: @game.id)
	end

	def update
		@user = current_user
		@game = Game.find_by(slug: params[:game])
		@usergame = UserGame.where(game_id: @game.id, user_id: @user.id)
		@usergame.update(:lfg => params[:box])
		

		redirect_to '/mygames', notice: "your setting was saved"	
	end

	def destroy
		@user = current_user
		@game = Game.find_by(slug: params[:game])
		@usergame = UserGame.find_by(game_id: @game.id, user_id: @user.id)
		#####cant find usergame.id
		@usergame.destroy
		redirect_to '/mygames', notice: "game was deleted from your library"
	end

end
