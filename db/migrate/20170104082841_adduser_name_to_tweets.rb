class AdduserNameToTweets < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :user_name, :string
  end
end
