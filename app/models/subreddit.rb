class Subreddit < ActiveRecord::Base
  attr_accessible :name, :url

  has_many :stories

  def get_content

  	request = HTTParty.get("http://reddit.com/r/#{url}")

  	doc = Nokogiri::HTML(request.body)

  	doc.css("#siteTable .entry a.title").each do |entry|

  		story = self.stories.new
  		story.title = entry.text
  		story.link = entry[:href]
  		story.save

  	end

  end
end
