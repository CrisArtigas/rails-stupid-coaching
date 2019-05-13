class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @answer = params[:question]
    @user

    if @answer.downcase == "i'm going to work"
      @user = "Great!"
    elsif @answer.end_with?("?")
      @user = "Silly question, get dressed and go to work!"
    else
      @user = "I don't care, get dressed and go to work!"
    end
  end
end
