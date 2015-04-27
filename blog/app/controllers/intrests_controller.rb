class IntrestsController < ApplicationController


     def index
  if params[:search]
    @intrests =Intrest.search(params[:search]).order("created_at DESC")
  else
    @intrests =  Intrest.all.order('created_at DESC')
  end
end

  def follow 
    @user_id = params[:user_id];
    @Intrest_id = params[:intrest_id];
    UserIntrest.create(user_id: params[:user_id], inrest_id: params[:intrest_id]);
    @intrest = Intrest.find(@Intrest_id)
    redirect_to intrests_path
  end




def unfollow

   @user =  UserIntrest.find_by(user_id: params[:user_id], inrest_id: params[:intrest_id]);
    @user.destroy
  redirect_to intrests_path
end
  


  def show
    @intrest = Intrest.find(params[:id])
  end


     def create
  if params[:search]
    @intrests =Intrest.search(params[:search]).order("created_at DESC")
  else
    @intrests =  Intrest.all.order('created_at DESC')
  end
end

end