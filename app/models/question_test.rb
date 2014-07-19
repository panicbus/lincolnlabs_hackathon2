class QuestionTest < ActiveRecord::Base
  attr_accessible :quiz_id, :question_id, :cadidate_answer, :party_answer

	belongs_to :question
	belongs_to :quiz



end
