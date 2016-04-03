class CreateAnswer < ActiveRecord::Migration
	def change
		create_table :answer, id:false do |t|

				t.primary_key :answer_id
				t.string :content
				t.references :survey_question, index: true 

			t.timestamps null: false
		end
		add_foreign_key :answer, :survey_question, primary_key: "survey_question_id"

	end
end
