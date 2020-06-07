class RemoveParentIdFromChildren < ActiveRecord::Migration[6.0]
  def change
    remove_column :children, :parent_id, :integer
  end
end
