class QuestionsController < ApplicationController
  def ask
  end

  def answer
    conversation
    @answer
  end

  def conversation
    @question = params[:question]

    if @question.include?('I am going to work')
      @answer = 'Great'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
