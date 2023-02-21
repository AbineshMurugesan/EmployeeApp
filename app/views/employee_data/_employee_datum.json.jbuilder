json.extract! employee_datum, :id, :name, :age, :gender, :designation, :created_at, :updated_at
json.url employee_datum_url(employee_datum, format: :json)
