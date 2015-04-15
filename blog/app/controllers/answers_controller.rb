class AnswersController < ApplicationController
	  def show
    @answer = Answer.find(params[:id])
  end
    def index
    @askprovider = Askprovider.find(params[:askprovider_id])
  end
	def create
    @askprovider = Askprovider.find(params[:askprovider_id])
    @answer = @askprovider.answers.create(answer_params)
    redirect_to askprovider_path(@askprovider)
  end
 
  
  private
    def answer_params
      params.require(:answer).permit(:answerer, :body)
    end
end

