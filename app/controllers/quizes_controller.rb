class QuizesController < ApplicationController

  def index
    @quizes = Quiz.all
    @quiz = Quiz.new
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @questions.find_by(category:params[:category])
    @quiz = Quiz.create( user_id: current_user.id, category: params[:category] )

    @questions.each do |question|
      Question_test.create(question_id: question.id, quiz_id: @quiz.id)
    end

  end

  def show
  end

  # private
  # def quiz_parameters
  #   params.require(:quizes).permit(:category)
  # end

end
