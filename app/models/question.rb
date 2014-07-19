class Question < ActiveRecord::Base

  has_many :question_tests
	has_many :quizes, through: :question_tests


  attr_accessible :quote, :party, :candidate, :category
end
