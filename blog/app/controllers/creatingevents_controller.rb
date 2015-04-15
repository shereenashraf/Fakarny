class CreatingeventsController < ApplicationController
   def show
    @creatingevents = Creatingevents.find(params[:id])
  end
 
    def new
end
def create
  @creatingevents = Creatingevents.new(creatingevents_params)
 
  @creatingevents.save
  redirect_to @creatingevents
end
 
private
  def creatingevents_params
    params.require(:creatingevents).permit(:date, :time, :place, :description)
  end
end
