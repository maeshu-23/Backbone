class RemoveNameFromTweets < ActiveRecord::Migration[6.0]
  def change
    remove_column :tweets, :image_id, :string
  end
end
