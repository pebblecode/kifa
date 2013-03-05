class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name, :length => 200
      t.string :link, :null => false, :length => 200

      t.timestamps
    end
  end
end
