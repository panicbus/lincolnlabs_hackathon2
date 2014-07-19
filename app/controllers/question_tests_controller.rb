class QuestionTestsController < ApplicationController
  def index

  end

  def new
  end

  def show
  end

  def update
    @answer = QuestionTest.find(params[:id])

    @answer.update_attributes(candidate_answer:params["answer"]["candidate_answer"], party_answer:params["answer"]["party_answer"])

    render json: @vote, status: 201
  end


end
