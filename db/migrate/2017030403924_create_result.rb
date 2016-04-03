class CreateResult < ActiveRecord::Migration
	def change
		create_table :result, id:false do |t|

				t.primary_key :result_id
				t.references :survey, index: true 
				t.references :survey_question, index: true 
				t.string :type_response
				t.string :response

			t.timestamps null: false
		end
		add_foreign_key :result, :survey, primary_key: "survey_id"
		add_foreign_key :result, :survey_question, primary_key: "survey_question_id"

	end
end
 
