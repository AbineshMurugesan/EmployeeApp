require "application_system_test_case"

class Sample1sTest < ApplicationSystemTestCase
  setup do
    @sample1 = sample1s(:one)
  end

  test "visiting the index" do
    visit sample1s_url
    assert_selector "h1", text: "Sample1s"
  end

  test "should create sample1" do
    visit sample1s_url
    click_on "New sample1"

    fill_in "Age", with: @sample1.age
    fill_in "Name", with: @sample1.name
    click_on "Create Sample1"

    assert_text "Sample1 was successfully created"
    click_on "Back"
  end

  test "should update Sample1" do
    visit sample1_url(@sample1)
    click_on "Edit this sample1", match: :first

    fill_in "Age", with: @sample1.age
    fill_in "Name", with: @sample1.name
    click_on "Update Sample1"

    assert_text "Sample1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Sample1" do
    visit sample1_url(@sample1)
    click_on "Destroy this sample1", match: :first

    assert_text "Sample1 was successfully destroyed"
  end
end
