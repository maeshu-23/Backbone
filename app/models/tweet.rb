class Tweet < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :favorites, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :body
  end
end
