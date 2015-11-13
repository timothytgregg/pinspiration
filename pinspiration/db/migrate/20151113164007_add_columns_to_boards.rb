class AddColumnsToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :user_id, :int
    add_column :boards, :name, :string
    add_column :boards, :description, :string
  end
end
