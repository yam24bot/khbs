class CreateVideoReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :video_reviews do |t|
      t.string :title
      t.text :description
      t.text :youtube_link

      t.timestamps
    end
  end
end
