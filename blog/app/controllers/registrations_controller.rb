class RegistrationsController < ApplicationController
    protected

def new
  end


  def after_sign_up_path_for(users)
    'blog/app/views/user/show.html.erb'
  end
  
end
