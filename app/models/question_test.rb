class QuestionTest < ActiveRecord::Base

	belongs_to :question
	belongs_to :quiz

  attr_accessible :test_id, :question_id, :cadidate_answer, :party_answer

end
