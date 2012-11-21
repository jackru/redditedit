class ChangeTitleOnStory < ActiveRecord::Migration
  def up
  	change_column :stories, :title, :text
  end

  def down
  	change_column :stories, :title, :string
  end
end
