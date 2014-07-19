class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

    	t.string :quote
    	t.string :party
    	t.string :candidate
    	t.string :category

      t.timestamps
    end
  end
end
