require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(comment:"hello my name is mr addo")
  end

  test "return true" do
    @post.comment = "hello my name is mr addo"
    assert @post.valid? 
  end

  test "return false if empty" do
      @post.comment = "  "
      assert_not @post.save
  end


  test "should be return false if comment length is too long" do
     @post.comment = "a" *2
     assert @post.save!  
  end
end
