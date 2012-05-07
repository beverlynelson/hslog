class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :educator_id
      t.string :first_name
      t.integer :school_grade
      t.date :birthdate
      t.string :gender
      t.integer :user_id

      t.timestamps
    end
  end
end
