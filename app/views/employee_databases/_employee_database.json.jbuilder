json.extract! employee_database, :id, :Name, :age, :gender, :designation, :created_at, :updated_at
json.url employee_database_url(employee_database, format: :json)
