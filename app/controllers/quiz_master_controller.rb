class QuizMasterController < ApplicationController
  def index
    @questions = Question.all
  end

  def answer
    question = Question.find(params[:question_id])
    answer_in_word = NumbersInWords.in_numbers(params[:answer]).to_s
    if question && (question.answer == params[:answer] || question.answer == answer_in_word)
      render json: 'CORRECT!', status: 200
    else
      render json: 'WRONG!', status: 200
    end
  end
end
