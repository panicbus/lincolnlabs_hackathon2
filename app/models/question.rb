class Question < ActiveRecord::Base

	has_many :quizes, through: :question_tests
	has_many :question_tests

end
