class AddPriorityAndCompletedToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :prioriry, :integer
    add_column :tasks, :completed, :boolean
  end
end
