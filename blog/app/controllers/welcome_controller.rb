class WelcomeController < ApplicationController
	def follow 
		@user_id = params[:user_id];
		@Intrest_id = params[:intrest_id];
		UserIntrest.create(user_id: @user_id, inrest_id: @Intrest_id);
		render json: UserIntrest.last
	end

end
