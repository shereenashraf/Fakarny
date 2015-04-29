class AnswersController < ApplicationController
	  def show
    @answer = Answer.find(params[:id])
  end
    def index
    @askprovider = Askprovider.find(params[:askprovider_id])
  end
	def create
    @askprovider = Askprovider.find(params[:askprovider_id])
    @answer = Answers.create(answer_params)
    @answer.askprovider_id = @askprovider.id
    @answer.save
    redirect_to askprovider_path(@askprovider)
  end
 
  def new
    @answer = Answers.new
  end
  private
    def answer_params
      params.require(:answers).permit(:answerer, :body)
    end
end
  