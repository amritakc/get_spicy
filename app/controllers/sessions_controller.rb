class SessionsController < ApplicationController

	def create
		@user = User.find_by(name: params[:alias])
		# render :text => @user.name

		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to '/profile'
		else
			render :text => "did not find alias"
		end
	end


end
