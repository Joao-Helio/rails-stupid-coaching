class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:answer]
      your_message = params[:answer]
      # TODO: return coach answer to your_message
      if your_message.end_with? "?"
        @answer = "Silly question, get dressed and go to work!"
      elsif your_message.downcase == "i am going to work!"
        @answer = "Great!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    else
      @answer = "Say something!"
    end
  end
end
