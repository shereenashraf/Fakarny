class PagesController < ApplicationController
    def show
    @page = Page.find(params[:id])
  end
  
   
    def new
  end
  def create
  
  @page = Page.new(page_params)
 
  @page.save
  redirect_to @page
end
 
private
  def page_params
    params.require(:page).permit(:providername, :providerinfo, :contactus)
  end
  end
