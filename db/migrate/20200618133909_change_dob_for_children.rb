class ChangeDobForChildren < ActiveRecord::Migration[6.0]
  def change
    remove_column :children, :dob, :date
    add_column :children, :age, :integer
  end
end
