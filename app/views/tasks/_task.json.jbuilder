json.extract! task, :id, :project_name, :title, :description, :notes, :autor, :executor, :estimation_time, :status, :created_at, :updated_at, :prject_id, :user_id, :completed, :priority
json.url task_url(task, format: :json)
