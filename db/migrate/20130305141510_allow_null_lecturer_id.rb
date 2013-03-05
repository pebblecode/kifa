class AllowNullLecturerId < ActiveRecord::Migration
  def up
    change_column :lectures, :lecturer_id, :integer, :null => true
  end

  def down
    change_column :lectures, :lecturer_id, :integer, :references => :user, :null => false
  end
end
