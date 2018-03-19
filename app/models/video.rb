class Video < ApplicationRecord
  belongs_to :user

  has_attached_file :thumbnail
  validates_attachment :thumbnail, presence: true,
                      content_type: { content_type: /\Aimage/ },
                      size: { in: 0..1.megabytes }

  has_attached_file :video, presence: true,
                    content_type: { content_type: 'video/mp4' },
                    size: { in: 0..10.megabytes }
  scope :public_videos, -> { where(private: false) }

  validates :title, presence: true

end
