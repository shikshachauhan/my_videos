class AddThumbnailAttachment < ActiveRecord::Migration[5.1]
  def change
    remove_column :videos, :thumbnail
    add_attachment :videos, :thumbnail
  end
end
