require "application_system_test_case"

class EmployeeDatabasesTest < ApplicationSystemTestCase
  setup do
    @employee_database = employee_databases(:one)
  end

  test "visiting the index" do
    visit employee_databases_url
    assert_selector "h1", text: "Employee databases"
  end

  test "should create employee database" do
    visit employee_databases_url
    click_on "New employee database"

    fill_in "Name", with: @employee_database.Name
    fill_in "Age", with: @employee_database.age
    fill_in "Designation", with: @employee_database.designation
    fill_in "Gender", with: @employee_database.gender
    click_on "Create Employee database"

    assert_text "Employee database was successfully created"
    click_on "Back"
  end

  test "should update Employee database" do
    visit employee_database_url(@employee_database)
    click_on "Edit this employee database", match: :first

    fill_in "Name", with: @employee_database.Name
    fill_in "Age", with: @employee_database.age
    fill_in "Designation", with: @employee_database.designation
    fill_in "Gender", with: @employee_database.gender
    click_on "Update Employee database"

    assert_text "Employee database was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee database" do
    visit employee_database_url(@employee_database)
    click_on "Destroy this employee database", match: :first

    assert_text "Employee database was successfully destroyed"
  end
end
