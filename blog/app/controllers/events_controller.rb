class EventsController < ApplicationController

   def index
    if params[:search]
      @events = Event.search(params[:search]).order("created_at DESC")
    else
      @events = Event.order("created_at DESC")
    end
  end

   def show 
       @event = Event.find(params[:id])
  end
 
 
 def new
end
def create
  @event =Event.new(event_params)
 @event.save
  redirect_to  @event
  
end
 
private
  def event_params
    params.require(:event).permit(:date, :time, :place, :description)
  end


end 