require "test_helper"

class EmployeesamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employeesample = employeesamples(:one)
  end

  test "should get index" do
    get employeesamples_url
    assert_response :success
  end

  test "should get new" do
    get new_employeesample_url
    assert_response :success
  end

  test "should create employeesample" do
    assert_difference("Employeesample.count") do
      post employeesamples_url, params: { employeesample: { Empage: @employeesample.Empage, Empname: @employeesample.Empname } }
    end

    assert_redirected_to employeesample_url(Employeesample.last)
  end

  test "should show employeesample" do
    get employeesample_url(@employeesample)
    assert_response :success
  end

  test "should get edit" do
    get edit_employeesample_url(@employeesample)
    assert_response :success
  end

  test "should update employeesample" do
    patch employeesample_url(@employeesample), params: { employeesample: { Empage: @employeesample.Empage, Empname: @employeesample.Empname } }
    assert_redirected_to employeesample_url(@employeesample)
  end

  test "should destroy employeesample" do
    assert_difference("Employeesample.count", -1) do
      delete employeesample_url(@employeesample)
    end

    assert_redirected_to employeesamples_url
  end
end
