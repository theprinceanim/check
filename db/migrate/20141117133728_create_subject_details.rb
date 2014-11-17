class CreateSubjectDetails < ActiveRecord::Migration
  def change
    create_table :subject_details do |t|
      t.string :subject_code
      t.string :subject_name
      t.decimal :mark
      t.integer :grade

      t.timestamps null: false
    end
  end
end
