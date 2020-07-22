class RenameColumnPrioriry < ActiveRecord::Migration[5.2]
  def change
rename_column :tasks, :prioriry, :priority
  end
end
