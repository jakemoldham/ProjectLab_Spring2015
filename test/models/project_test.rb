require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  
  def setup
    @project = Project.new(name: "Example User", description: "Description",
                     due_date: "Date")
  end

  test "should be valid" do 
   assert @project.valid? 
  end

  test "name should be present" do
    @project.name = "    "
    assert @project.invalid?
  end

  test "description should be present" do
    @project.description = "     "
    assert_not @project.valid?
  end

  test "name should not be too long" do
    @project.name = "a" * 51
    assert_not @project.valid?
  end

  test "email should not be too long" do
    @project.description = "a" * 400
    assert_not @project.valid?
  end
end
