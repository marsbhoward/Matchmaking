class HomeController < ApplicationController
	def index
		#### uid is passed in params but signed up user a uid of nil
		@user = current_user
	end
end
