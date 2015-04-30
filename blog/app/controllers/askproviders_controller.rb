class AskprovidersController < ApplicationController
		  def show
      @askprovider = Askprovider.find(params[:id])
      @answers = Answers.where(askprovider_id: params[:id])
  end
  def index
    @askproviders = Askprovider.all
  end
	 def new
  end
  def create
  @askprovider = Askprovider.new(askprovider_params)
 
   if @askprovider.save
    redirect_to @askprovider
  else
    render 'new'
  end
end
def destroy
  @askprovider = Askprovider.find(params[:id])
  @askprovider.destroy
 
  redirect_to askproviders_path
end

  
private
  def askprovider_params
    params.require(:askprovider).permit(:text)
  end	
end
