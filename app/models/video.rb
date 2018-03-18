class Video < ApplicationRecord
  belongs_to :user
  mount_uploader :video, VideoUploader
  mount_uploader :thumbnail, ThumbnailUploader

  scope :public_videos, -> { where(private: false) }
end
