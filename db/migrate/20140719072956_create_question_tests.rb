class CreateQuestionTests < ActiveRecord::Migration
  def change
    create_table :question_tests do |t|

    	t.integer :test_id
    	t.integer :question_id
    	t.string :candidate_answer
    	t.string :party_answer

      t.timestamps
    end
  end
end
