class IntrestsController < ApplicationController

	def follow 
		@user_id = params[:user_id];
		@Intrest_id = params[:intrest_id];
		UserIntrest.create(user_id: @user_id, intrest_id: @Intrest_id);
	end


	def show
		@intrest = Intrest.find(params[:id])
	end

	def index
		@intrests = Intrest.all
	end

end