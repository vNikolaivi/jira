class AddProjectIdToEstimate < ActiveRecord::Migration[5.2]
  def change
	add_column :estimates, :project_id, :integer
  end
end
