class CreateConsumer < ActiveRecord::Migration
	def change
		create_table :consumer, id:false do |t|

				t.primary_key :consumer_id
				t.string :ip_address
				t.string :email
				t.string :clave

			t.timestamps null: false
		end

	end
end
