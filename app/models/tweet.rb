class Tweet < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :favorites, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :body
  end

  # def already_favorited?(tweet)
  #   self.favorites.exists?(tweet_id: tweet.id)
  # end
end
