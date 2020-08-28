class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true
  attachment :profile_image
  has_many :tweets, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def already_favorited?(tweet)
    self.favorites.exists?(tweet_id: tweet.id)
  end
end
