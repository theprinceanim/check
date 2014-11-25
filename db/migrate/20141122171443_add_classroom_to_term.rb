class AddClassroomToTerm < ActiveRecord::Migration
  def change
  	add_reference :terms, :classroom, index: true
  end
end
