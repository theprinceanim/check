class AddStudentRefToSubjectDetails < ActiveRecord::Migration
  def change
    add_reference :subject_details, :student, index: true
  end
end
