class AskprovidernotificationsController < ApplicationController

before_filter :admin_user,   :only => [:index,:create]

def admin_user
    authenticate
    redirect_to(root_path) unless current_user.admin?
end 
end
    
    
    
    def create
      
      #after creating comments, creat notificatio
       @users.each do |user|
        Askprovidernotification.create(page_id:@page, user_id: user.id)
      
    end
  def index
  @notifications = current_user.notications
  @notifications.each do |notification|
    notification.update_attribute(:checked, true)
  end

end 

end 
