class CreateEmployeeDatabases < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_databases do |t|
      t.string :Name
      t.integer :age
      t.string :gender
      t.string :designation

      t.timestamps
    end
  end
end
