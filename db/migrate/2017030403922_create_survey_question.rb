class CreateSurveyQuestion < ActiveRecord::Migration
	def change
		create_table :survey_question, id:false do |t|

				t.primary_key :survey_question_id
				t.string :content
				t.references :survey, index: true 
				t.integer :cardinal
				t.string :type_question

			t.timestamps null: false
		end
		add_foreign_key :survey_question, :survey, primary_key: "survey_id"

	end
end
