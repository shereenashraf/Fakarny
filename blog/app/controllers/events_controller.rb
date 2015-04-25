class EventsController < ApplicationController



   def show 
       @event = Event.find(params[:id])
  end
 
 
  def show
    @event = Event.find(params[:id])
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

	def follow
		@user_id = params[:user_id];
		@event_id = params[:event_id];
		UserEvent.create(user_id: @user_id, event_id: @event_id);

end

end 