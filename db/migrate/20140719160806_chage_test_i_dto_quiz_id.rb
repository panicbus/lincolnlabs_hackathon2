class ChageTestIDtoQuizId < ActiveRecord::Migration
  def change

    rename_column :question_tests, :test_id, :quiz_id
  end
end
