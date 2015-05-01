class UsersController < ApplicationController
before_action :logged_in_user, only: [:index, :edit, :update, :destroy,
                                        :following, :followers]

 def show 
       @user = User.find(params[:id])
  end
def admin_home
    @user = current_user
    authorize! :admin_home
end

end
