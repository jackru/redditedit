class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :subreddit_id
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
