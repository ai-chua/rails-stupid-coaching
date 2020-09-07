class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = ''

    if @question == 'I am going to work'
      @answer = 'Great!'
    else
      @question.include? '?' ? @answer = 'Silly question, get dressed and go to work!' : @answer = "I don't care, get dressed and go to work!"
    end
  end
end
