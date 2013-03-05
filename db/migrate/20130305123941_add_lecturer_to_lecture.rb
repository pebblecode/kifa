class AddLecturerToLecture < ActiveRecord::Migration
  def change
    add_column :lectures, :lecturer_id, :integer, :null => false
  end
end
