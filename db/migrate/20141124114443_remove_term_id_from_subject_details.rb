class RemoveTermIdFromSubjectDetails < ActiveRecord::Migration
  def change
    remove_column :subject_details, :term_id, :integer
  end
end
