class Tweet < ActiveRecord::Base
  attr_accessible :name, :picture, :screen_name, :text
end
