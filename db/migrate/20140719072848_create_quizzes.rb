class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|

    	t.integer :user_id
    	t.string :party_score
    	t.string :candidate_score
    	t.string :category

      t.timestamps
    end
  end
end
