class HomeController < ApplicationController
  def index
  	@subreddits = Subreddit.all
  end
end
