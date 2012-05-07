class CreateEducators < ActiveRecord::Migration
  def change
    create_table :educators do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mission
      t.integer :user_id

      t.timestamps
    end
  end
end
