class EventsController < ApplicationController
	def follow
		@user_id = params[:user_id];
		@event_id = params[:event_id];
		UserEvent.create(user_id: @user_id, event_id: @event_id);

end

def destroy
	event.destroy
event.find('amr').destroy
event.destroy('amr')
event.where(name: 'amr').destroy_all
event.destroy_all(name: 'name')
end


def show
	@event = Event.find(params[:id])
end

def index
	@events= Event.all
end
end