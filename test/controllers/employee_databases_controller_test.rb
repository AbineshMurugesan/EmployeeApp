require "test_helper"

class EmployeeDatabasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_database = employee_databases(:one)
  end

  test "should get index" do
    get employee_databases_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_database_url
    assert_response :success
  end

  test "should create employee_database" do
    assert_difference("EmployeeDatabase.count") do
      post employee_databases_url, params: { employee_database: { Name: @employee_database.Name, age: @employee_database.age, designation: @employee_database.designation, gender: @employee_database.gender } }
    end

    assert_redirected_to employee_database_url(EmployeeDatabase.last)
  end

  test "should show employee_database" do
    get employee_database_url(@employee_database)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_database_url(@employee_database)
    assert_response :success
  end

  test "should update employee_database" do
    patch employee_database_url(@employee_database), params: { employee_database: { Name: @employee_database.Name, age: @employee_database.age, designation: @employee_database.designation, gender: @employee_database.gender } }
    assert_redirected_to employee_database_url(@employee_database)
  end

  test "should destroy employee_database" do
    assert_difference("EmployeeDatabase.count", -1) do
      delete employee_database_url(@employee_database)
    end

    assert_redirected_to employee_databases_url
  end
end
