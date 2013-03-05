class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :null => false, :length => 200

      t.timestamps
    end
  end
end
