ActiveAdmin.register Subreddit do
	
	batch_action :get_content do |selection|
		Subreddit.find(selection).each do |sub|
			sub.get_content
		end
		
		flash[:notice] = "Grabbed content"
		redirect_to action: :index
	end

end
