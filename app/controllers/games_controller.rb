class GamesController < ApplicationController
	before_action :user_permissions, only: [:edit, :update, :destroy]





	def new 
		@game = Game.new
	end

	def show
		#@game = Game.find(params[:id])
		respond_to do |f|
			f.html { render :show}
		end
	end

	def create
		@game = current_user.games.build(games_params.merge(user_id: current_user.id))
		if @game.save
		respond_to do |f|
			f.html { render :edit }	
			end
		end
	end	


	def edit 
		respond_to do |f|
			f.html { render :edit }
		end	
	end

	def update
		@game.update(game_params)
		redirect_to games_path
	end

	def destroy
    	@game.destroy
    	redirect_to games_path
  	end





  	private

	def user_permissions
		@game = Game.find(params[:id])
		if @game && @game.user == current_user
		else
			flash[:notice] = "Foolish mortal. You can only edit or delete your own entries!"
			redirect_to games_path
		end
	end

	def game_params
		params.require(:game).permit(:name, :publisher, :description)
	end

end
