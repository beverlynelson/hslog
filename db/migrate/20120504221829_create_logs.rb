class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :activity_id
      t.integer :educator_id
      t.integer :student_id
      t.integer :subject_id
      t.integer :day
      t.date :date

      t.timestamps
    end
  end
end
