class QuestionsController < ApplicationController
  def index
    @questions = Question.where{content =~ my{params[:keywords]}}
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create!(question_params)
    redirect_to @question
  end

  private

  def question_params
    params.require(:question).permit(:content)
  end
end