class HomeController < ApplicationController
	def index
		@user = User.find_by(uid: params[:uid])
	    if @user 
	      session[:uid] = @user.id
	      session[:username] = @user.name
	      session[:email] = @user.email
	  	end
	end
end
