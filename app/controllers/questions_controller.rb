class QuestionsController < ApplicationController

  def ask
    # @question = params[:question]
    # @answer = answer
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(your_message)
    if your_message.downcase == 'I am going to work right now!'
      'Great!'
    elsif your_message.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
