require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @user = User.new(name: "Jeff", email: "jeff@example.com")
  end


  test "should be valid" do
    assert @user.valid?
  end
  
  test "name of user presence" do
    @user.name = " "
    assert_not @user.valid?
  end
  
  test "validates the presence of an email" do
    @user.email = " "
    assert_not @user.valid?
  end
  
  test "Validates the user's name length" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end
  
  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @email.valid?
  end
  
  test "email validations should be able to accept valid email addresses" do
    valid_addresses = %w[sample@example.com, jeff_sam@example.org x_y_z@foo.bar.co]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validations should reject invalid email addresses" do
    invalid_addresses = %w[sample@example,com, jeff_sam_at.foo.com, xyz@foo.com_com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end  
  
  
  
  







end

