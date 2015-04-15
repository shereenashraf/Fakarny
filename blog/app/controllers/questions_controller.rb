class QuestionsController < ApplicationController
def create
    @event = Event.find(params[:event_id])
    @question = @event.questions.create(question_params)
    redirect_to event_path(@event)
  end


 def destroy
   
    @event = Event.find(params[:event_id])
    @event = @event.questions.find(params[:id])
    if @question.present?
    @question.destroy
  end
    redirect_to event_path(@event)
  end
 

  private
    def question_params
      params.require(:question).permit(:body)
    end
end

