class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
		# t.integer :project_id
		t.references :project, index: true
		#the last commented line is exactly the same than the first one
		t.integer :hours
		t.integer :minutes
		t.text	:comment
		t.datetime :date			

		t.timestamps null: false
	end
  end
end
