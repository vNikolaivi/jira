class AddAutorExecutorAndEstimationTimeToTask < ActiveRecord::Migration[5.2]
  def change
	add_column :tasks, :autor, :string
	add_column :tasks, :executor, :string
	add_column :tasks, :estimation_time, :timestamp
  end
end
