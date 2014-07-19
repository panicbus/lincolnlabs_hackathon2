class Quiz < ActiveRecord::Base

	belongs_to :user
	has_many :questions, through: :question_tests
	has_many :question_tests

  attr_accessible :user_id, :party_score, :candidate_score, :category


end
