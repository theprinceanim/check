class AddTermIdToSubjectDetails < ActiveRecord::Migration
  def change
    add_column :subject_details, :term_id, :integer
  end
end
