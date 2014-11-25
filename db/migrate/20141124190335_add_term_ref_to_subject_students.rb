class AddTermRefToSubjectStudents < ActiveRecord::Migration
  def change
    add_reference :students, :term, index: true
  end
end
