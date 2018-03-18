class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.references :user, foreign_key: true
      t.boolean :private
      t.string :title
      t.string :video
      t.string :thumbnail
      t.text :description

      t.timestamps
    end
  end
end
