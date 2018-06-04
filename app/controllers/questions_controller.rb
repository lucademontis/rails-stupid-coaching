class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # params[question] comes from HTML form found in ask.html.erb
    @question = params[:question]
    if @question == "I am going to work"
      @answer = "Great!"
      # [-1, 1] --> last entry of string
    elsif @question[-1, 1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    return @answer
  end

end
