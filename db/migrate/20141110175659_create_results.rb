class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :subject_code
      t.string :subject_name
      t.decimal :mark
      t.references :student, index: true 

      t.timestamps null: false
    end
  end
end
