class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
    	t.string :name
      t.string :screen_name
      t.string :text
      t.string :picture

      t.timestamps
    end
  end
end
