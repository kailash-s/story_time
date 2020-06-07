class AddParentIdToChildren < ActiveRecord::Migration[6.0]
  def change
    add_column :children, :parent_id, :integer
  end
end
