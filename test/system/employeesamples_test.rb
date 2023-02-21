require "application_system_test_case"

class EmployeesamplesTest < ApplicationSystemTestCase
  setup do
    @employeesample = employeesamples(:one)
  end

  test "visiting the index" do
    visit employeesamples_url
    assert_selector "h1", text: "Employeesamples"
  end

  test "should create employeesample" do
    visit employeesamples_url
    click_on "New employeesample"

    fill_in "Empage", with: @employeesample.Empage
    fill_in "Empname", with: @employeesample.Empname
    click_on "Create Employeesample"

    assert_text "Employeesample was successfully created"
    click_on "Back"
  end

  test "should update Employeesample" do
    visit employeesample_url(@employeesample)
    click_on "Edit this employeesample", match: :first

    fill_in "Empage", with: @employeesample.Empage
    fill_in "Empname", with: @employeesample.Empname
    click_on "Update Employeesample"

    assert_text "Employeesample was successfully updated"
    click_on "Back"
  end

  test "should destroy Employeesample" do
    visit employeesample_url(@employeesample)
    click_on "Destroy this employeesample", match: :first

    assert_text "Employeesample was successfully destroyed"
  end
end
