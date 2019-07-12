require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(comment: "this our test comment for the post" ,user_id: 1, post_id: 1)
  end
  
  test "the truth" do
     @comment.comment = "this our test comment for the post"
     assert true
  end


  test "the post comment should not be empty" do
    @comment.comment = "                  "
    assert_not @comment.save
  end
  
  test "for a minimum length" do
    @comment.comment = "a" *4
    assert_not @comment.valid?
  end
end
