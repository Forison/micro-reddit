require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'janet' ,email: 'janet@yahoo.com' ,country:'Ghana')
    @invalid_email = %w[user@example,com user_at_foo.org user.name@example.
    foo@bar_baz.com foo@bar+baz.com]
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

  test "username should not be too long" do
    @user.username = "a" * 15
    assert @user.valid?
  end
  
  test "email should not be too long" do
    @user.email = "a" * 15 + "@example.com"
    assert_not @user.valid?
  end
  
  test "country should not be too long" do
    @user.country = "a" * 15 
    assert @user.valid?
  end

  
  test "email should be invalid" do
    @invalid_email.each do |invalid_address|
    @user.email = invalid_address
    assert_not @user.valid?, "#{invalid_address.inspect} is invalid"
    end
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert duplicate_user.valid?
  end

end
