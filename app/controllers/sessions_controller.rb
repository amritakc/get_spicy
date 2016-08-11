class SessionsController < ApplicationController

	def create
		@user = User.find_by(name: params[:alias])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to '/profile'
		else
			if User.find_by(name: params[:name])==nil
				flash[:loginmistakes] = ["Invalid name"]
				redirect_to '/login'
			else
				flash[:loginmistakes] = ["Invalid password"]
				redirect_to '/login'
			end
		end
	end


end
