class QuizesController < ApplicationController

  def index
    @quizes = Quiz.all
    @quiz = Quiz.new
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @questions= Question.where(category:params[:category])
    @quiz = Quiz.create( user_id: current_user.id, category: params[:category] )

    @questions.each do |question|
      QuestionTest.create(question_id: question.id, quiz_id: @quiz.id)
    end

    redirect_to quize_path(@quiz.id)

  end

  def show
    @quiz = Quiz.find(params['id'])
  end

  def splash
    render :splash
  end

  # private
  # def quiz_parameters
  #   params.require(:quizes).permit(:category)
  # end

end
