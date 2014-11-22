class AddTermToSubjectDetails < ActiveRecord::Migration
  def change
    add_reference :subject_details, :term, index: true
  end
end
