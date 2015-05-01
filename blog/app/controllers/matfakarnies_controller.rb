class MatfakarniesController < ApplicationController

def index
    @matfakarnies = Matfakarny.all
  end
  
def show
    @matfakarny = Matfakarny.find(params[:id])
  end

def new
  @matfakarny = Matfakarny.new
end
 
def create
  @matfakarny = Matfakarny.new(matfakarny_params)
 
  if @matfakarny.save
    redirect_to @matfakarny
  else
    render 'new'
  end
end
  def upvote
  @matfakarny = Matfakarny.find(params[:id])
  @matfakarny.votes.create
  redirect_to :back
end
  private
  def matfakarny_params
    params.require(:matfakarny).permit(:title)
  end
  
end
