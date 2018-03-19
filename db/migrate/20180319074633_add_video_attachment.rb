class AddVideoAttachment < ActiveRecord::Migration[5.1]
  def change
    remove_column :videos, :video
    add_attachment :videos, :video
  end
end
