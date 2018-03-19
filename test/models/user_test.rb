require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "videos association" do
    assert User.new.videos.class.to_s == 'Video::ActiveRecord_Associations_CollectionProxy'
  end
  test "email presence" do
    u = User.new
    u.valid?
    u.errors
    assert u.errors[:email] == ["can't be blank"]
  end
end
