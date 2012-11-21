task update_all_subreddits: :environment do
	Subreddit.all.each do |sub|
		puts "Grabbing content from #{sub.name}"
		sub.get_content
		puts "Finished grabbing content from #{sub.name}"
	end
end