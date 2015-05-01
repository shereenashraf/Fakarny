{"changed":true,"filter":false,"title":"pages_controller.rb","tooltip":"/blog/app/controllers/pages_controller.rb","value":"class PagesController < ApplicationController\n\n\n   def index\n  if params[:search]\n    @pages = Page.search(params[:search]).order(\"created_at DESC\")\n  else\n    @pages =  Page.all.order('created_at DESC')\n  end\nend\n\n    def show\n    @page = Page.find(params[:id])\n  end\n  \n   \n    def new\n  @page = Page.new\n  end\n\n\n  \n  def edit\n  @page = Page.find(params[:id])\nend\n\n  def create\n  @page = Page.new(page_params)\n   if @page.save\n    redirect_to pages_path\n  else\n    render 'new'\nend\nend\n\n\n def update\n  @page = Page.find(params[:id])\n\n \n  if @page.update(page_params)\n    redirect_to @page\n  else\n    render 'edit'\n  end\nend\nprivate\n  def page_params\n    params.require(:page).permit(:providername, :providerinfo, :contactus, :picture)\n  end\n\nend\n","undoManager":{"mark":-1,"position":2,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":0,"column":40},"action":"insert","lines":["https://fakarny-carolinerefaat-12.c9.io/"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":0,"column":40},"action":"remove","lines":["https://fakarny-carolinerefaat-12.c9.io/"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":52,"column":0},"action":"insert","lines":["class PagesController < ApplicationController","","","   def index","  if params[:search]","    @pages = Page.search(params[:search]).order(\"created_at DESC\")","  else","    @pages =  Page.all.order('created_at DESC')","  end","end","","    def show","    @page = Page.find(params[:id])","  end","  ","   ","    def new","  @page = Page.new","  end","","","  ","  def edit","  @page = Page.find(params[:id])","end","","  def create","  @page = Page.new(page_params)","   if @page.save","    redirect_to pages_path","  else","    render 'new'","end","end","",""," def update","  @page = Page.find(params[:id])",""," ","  if @page.update(page_params)","    redirect_to @page","  else","    render 'edit'","  end","end","private","  def page_params","    params.require(:page).permit(:providername, :providerinfo, :contactus, :picture)","  end","","end",""]}]}]]},"ace":{"folds":[],"scrolltop":301.72724056243896,"scrollleft":0,"selection":{"start":{"row":52,"column":0},"end":{"row":52,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":21,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1430491773307}