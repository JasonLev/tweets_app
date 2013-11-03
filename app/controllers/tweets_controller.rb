class TweetsController < ApplicationController

	def index
		@tweets = Twitter.search("SFGiants", :lang => "en", :count => 50, :result_type => "recent").results
		render :json => @tweets
	end
end
