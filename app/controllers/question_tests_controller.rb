class QuestionTestsController < ApplicationController



  def update
    @answer = QuestionTest.find(params[:id])
    @answer.update_attributes(candidate_answer:params[candidate_answer], party_answer:params[party_answer])

    render json: @vote, status: 201
  end


end
