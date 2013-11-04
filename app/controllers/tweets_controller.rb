class TweetsController < ApplicationController

	def index
	end

  def search
  	@searched_q = params[:q]
		tweets = Twitter.search(@searched_q, :lang => "en", :count => 15, :result_type => "recent").results
		# things to pull from twitter
		# [:user][:profile_image_url_https], :text, [:user][:screen_name]
		@mapped_info = tweets.map do |tweet|
			{:name => tweet[:user][:name],
				:screen_name => tweet[:user][:screen_name],
				:picture => tweet[:user][:profile_image_url_https],
				:text => tweet[:text]
			}
			# binding.pry
		end
		render :json => @mapped_info

		# This will put the info into the model:
		@model_data = @mapped_info.each do |tweet|
			Tweet.create(tweet)
		end
  end

end
