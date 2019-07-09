class GamesController < ApplicationController
	before_action :user_permissions, only: [:edit, :update, :destroy]


	def new 
		@game = Game.new
	end

	def show
		@game = Game.find_by(params[:name])
	end

end
