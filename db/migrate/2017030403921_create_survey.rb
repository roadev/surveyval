class CreateSurvey < ActiveRecord::Migration
	def change
		create_table :survey, id:false do |t|

				t.primary_key :survey_id
				t.string :title
				t.string :description
				t.references :consumer, index: true 

			t.timestamps null: false
		end
		add_foreign_key :survey, :consumer, primary_key: "consumer_id"

	end
end
