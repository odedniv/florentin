class QuestionsController < ApplicationController
  def index
    @questions = Question.where{title =~ "%#{my{params[:keywords]}}%"} if params[:keywords]
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    return render :new if not @question.save
    redirect_to @question
  end

  private

  def question_params
    params.require(:question).permit(:title)
  end
end
