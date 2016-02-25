class AnswersController < ApplicationController
  def new
    @answer = Answer.new(answer_params)
  end

  def create
    @answer = Answer.new(answer_params)
    return render :new if not @answer.save

    redirect_to @answer.question
  end

  private

  def answer_params
    params.require(:answer).permit(:question_id, :latitude, :longitude, :content)
  end
end
