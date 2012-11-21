class Story < ActiveRecord::Base
  attr_accessible :link, :subreddit_id, :title

  belongs_to :subreddit

  validates :link, uniqueness: true
end
