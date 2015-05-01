class PagesController < ApplicationController


   def index
  if params[:search]
    @pages = Page.search(params[:search]).order("created_at DESC")
  else
    @pages =  Page.all.order('created_at DESC')
  end
end

    def show
    @page = Page.find(params[:id])
  end
  
   
    def new
  @page = Page.new
  end


  
  def edit
  @page = Page.find(params[:id])
end

  def create
  @page = Page.new(page_params)
   if @page.save
    redirect_to pages_path
  else
    render 'new'
end
end


 def update
  @page = Page.find(params[:id])

 
  if @page.update(page_params)
    redirect_to @page
  else
    render 'edit'
  end
end
private
  def page_params
    params.require(:page).permit(:providername, :providerinfo, :contactus, :picture)
  end

end
