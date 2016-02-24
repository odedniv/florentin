class AnswersController < ApplicationController
  def create
    @answer = Answer.create!(answer_params)
    redirect_to @answer.question
  end

  private

  def answer_params
    params.require(:answer).permit(:question_id, :latitude, :longitude, :content)
  end
end
