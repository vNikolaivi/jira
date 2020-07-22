class AddProjectNameToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :project_name, :string
  end
end
