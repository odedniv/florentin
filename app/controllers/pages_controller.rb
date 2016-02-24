class PagesController < ApplicationController
  def home
    @primary_question = Question.first
    @questions = Question.last(20)
  end
end
