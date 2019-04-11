class HomeController < ApplicationController
	def index
		@user = User.find_by(uid: params[:uid])
	    if @user 
	      session[:uid] = @user.id
	      session[:username] = @user.name
	  	end
	end
end
