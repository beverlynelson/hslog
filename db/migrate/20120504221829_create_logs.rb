class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :activity_description
      t.string :activity_type
      t.string :activity_name
      t.integer :educator_id
      t.integer :student_id
      t.integer :subject_id
      

      t.timestamps
    end
  end
end
