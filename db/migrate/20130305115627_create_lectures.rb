class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :title, :null => false, :length => 200

      t.timestamps
    end
  end
end
