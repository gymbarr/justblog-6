require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  # this method automatically executes before tests
  def setup
    @category = Category.new(name: "Sports")
  end 

  test "category should be valid" do
    assert @category.valid?
  end

  test "name should be present" do
    @category.name = " "

    assert_not @category.valid?
  end

  test "name should be unique" do
    @category.save
    @category_2 = Category.new(name: "Sports")

    assert_not @category_2.valid?
  end

  test "name should not be to long" do
    @category.name = "a" * 26

    assert_not @category.valid?
  end

  test "name should not be to short" do
    @category.name = "a" * 2

    assert_not @category.valid?
  end

end