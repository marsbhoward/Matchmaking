class MyGamesController < ApplicationController
	def show
		@user = User.find_by(email: session[:email])
	end
end
