class SpecificsController < ApplicationController
	def index
  if params[:search]
    @specifics =Specific.search(params[:search]).order("created_at DESC")
  else
    @specifics =  Specific.all.order('created_at DESC')
  end
end
 def follow 
    @user_id = params[:user_id];
    @specific_id = params[:specific_id];
    UserSpecificIntrest.create(user_id: params[:user_id], specific_id: params[:specific_id]);
    @specific = Specific.find(@specific_id)
    redirect_to intrests_path
  end
  def unfollow

   @user =  UserSpecificIntrest.find_by(user_id: params[:user_id], specific_id: params[:specific_id]);
    @user.destroy
  redirect_to intrests_path
end
 def show
    @specific = Specific.find(params[:id])
  end
def create
  if params[:search]
    @specifics =Specific.search(params[:search]).order("created_at DESC")
  else
    @intrests =  Specific.all.order('created_at DESC')
  end
end
end
