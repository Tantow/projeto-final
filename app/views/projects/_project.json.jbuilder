json.extract! project, :id, :name, :deadline, :pmo, :manager, :created_at, :updated_at
json.url project_url(project, format: :json)
