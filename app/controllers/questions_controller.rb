class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @coach_message = evaluate(@question)
  end

  def evaluate(input)
    if input == 'I am going to work'
      'Great!'
    elsif input[-1] == '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
