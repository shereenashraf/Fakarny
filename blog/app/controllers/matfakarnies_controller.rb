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
  redirect_to(matfakarny_path)
end

def destroy
  @matfakarny = Matfakarny.find(params[:id])
  @matfakarny.destroy
 
  redirect_to matfakarnies_path
end

  private
  def matfakarny_params
    params.require(:matfakarny).permit(:title)
  end
  
end
