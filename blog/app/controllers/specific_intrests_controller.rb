class SpecificIntrestsController < ApplicationController

     def index
  if params[:search]
    @specificintrests =SpecificIntrest.search(params[:search]).order("created_at DESC")
  else
    @intrests =  SpecificIntrest.all.order('created_at DESC')
  end
end

  def follow 
    @user_id = params[:user_id];
    @Intrest_id = params[:intrest_id];
    UserSpecificIntrest.create(user_id: params[:user_id], inrest_id: params[:intrest_id]);
    @sintrest = SpecificIntrest.find(@Intrest_id)
    redirect_to intrests_path
  end




def unfollow

   @user =  UserSpecificIntrest.find_by(user_id: params[:user_id], inrest_id: params[:intrest_id]);
    @user.destroy
  redirect_to intrests_path
end
  


  def show
    @sintrest = SpecificIntrest.find(params[:id])
  end
end
