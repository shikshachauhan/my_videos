require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  test "user object" do
    assert Video.new.user == nil
  end

  test "public videos scope" do
    assert Video.public_videos.to_sql == "SELECT `videos`.* FROM `videos` WHERE `videos`.`private` = 0"
  end
end
