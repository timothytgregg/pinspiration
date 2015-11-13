class AddUserIdForeignKeyToPins < ActiveRecord::Migration
  def change
    add_column :pins, :user_id, :int
  end
end
