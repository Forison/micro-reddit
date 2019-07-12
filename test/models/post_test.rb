require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(comment: "this our test comment for the post" ,user_id: 1)
  end
  
  test "the truth" do
     @post.comment = "this our test comment for the post"
     assert true
  end


  test "the post comment should not be empty" do
    @post.comment = "                  "
    assert_not @post.save
  end
  
  test "for a minimum length" do
    @post.comment = "a" *4
    assert_not @post.valid?
  end
end
