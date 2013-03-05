class AddLectureToResources < ActiveRecord::Migration
  def change
    add_column :resources, :lecture_id, :integer, :null => false
  end
end
