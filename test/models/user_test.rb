require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'janet' ,email: 'janet@yahoo.com' ,country:'Ghana')
    @valid_email= %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
  end

  test "the truth" do
    assert true if @user.valid?
  end

  test "check for the presence of values in username" do
    assert_not @user.valid?  if @user.username = "   " 
  end

  test "check for the presence of values in email" do
    assert_not @user.valid?  if @user.email = "   " 
  end

  test "check for the presence of values in country" do
    assert_not @user.valid?  if @user.country = "   " 
  end

end
