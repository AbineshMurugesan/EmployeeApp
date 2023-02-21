require "application_system_test_case"

class EmployeeDataTest < ApplicationSystemTestCase
  setup do
    @employee_datum = employee_data(:one)
  end

  test "visiting the index" do
    visit employee_data_url
    assert_selector "h1", text: "Employee data"
  end

  test "should create employee datum" do
    visit employee_data_url
    click_on "New employee datum"

    fill_in "Age", with: @employee_datum.age
    fill_in "Designation", with: @employee_datum.designation
    fill_in "Gender", with: @employee_datum.gender
    fill_in "Name", with: @employee_datum.name
    click_on "Create Employee datum"

    assert_text "Employee datum was successfully created"
    click_on "Back"
  end

  test "should update Employee datum" do
    visit employee_datum_url(@employee_datum)
    click_on "Edit this employee datum", match: :first

    fill_in "Age", with: @employee_datum.age
    fill_in "Designation", with: @employee_datum.designation
    fill_in "Gender", with: @employee_datum.gender
    fill_in "Name", with: @employee_datum.name
    click_on "Update Employee datum"

    assert_text "Employee datum was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee datum" do
    visit employee_datum_url(@employee_datum)
    click_on "Destroy this employee datum", match: :first

    assert_text "Employee datum was successfully destroyed"
  end
end
