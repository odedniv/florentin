class PagesController < ApplicationController
  def home
    @question = Question.first
  end
end
