json.extract! task, :id, :project_id, :title, :description, :notes, :status, :created_at, :updated_at
json.url task_url(task, format: :json)
