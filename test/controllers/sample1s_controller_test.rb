require "test_helper"

class Sample1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sample1 = sample1s(:one)
  end

  test "should get index" do
    get sample1s_url
    assert_response :success
  end

  test "should get new" do
    get new_sample1_url
    assert_response :success
  end

  test "should create sample1" do
    assert_difference("Sample1.count") do
      post sample1s_url, params: { sample1: { age: @sample1.age, name: @sample1.name } }
    end

    assert_redirected_to sample1_url(Sample1.last)
  end

  test "should show sample1" do
    get sample1_url(@sample1)
    assert_response :success
  end

  test "should get edit" do
    get edit_sample1_url(@sample1)
    assert_response :success
  end

  test "should update sample1" do
    patch sample1_url(@sample1), params: { sample1: { age: @sample1.age, name: @sample1.name } }
    assert_redirected_to sample1_url(@sample1)
  end

  test "should destroy sample1" do
    assert_difference("Sample1.count", -1) do
      delete sample1_url(@sample1)
    end

    assert_redirected_to sample1s_url
  end
end
