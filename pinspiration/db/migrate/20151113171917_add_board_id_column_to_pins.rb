class AddBoardIdColumnToPins < ActiveRecord::Migration
  def change
    add_column :pins, :board_id, :int
  end
end
