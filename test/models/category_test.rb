require 'test_helper'
class CategoryTest<ActiveSupport::TestCase

    def setup
        @category=Category.new(name:"Sports")
    end

    test "Category should be valid" do
        assert @category.valid? 
    end

    test "Name should be present" do
        @category.name=""
        assert_not @category.valid?
    end

    test "Name should be Unique" do
        @category.save
        @category2=Category.new(name:"sports")
        assert @category2.valid?
    end

    test "Name should not be too long" do
        @category3=Category.new(name:"abcdefghijkl")
        assert_not @category3.valid?, "Name is long cut some name"
    end

    test "Name is too short" do
        @category3=Category.new(name:"andy")
        assert @category3.valid?
    end
end 