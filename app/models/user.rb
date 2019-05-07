class User < ApplicationRecord
  has_secure_password

  validates :email, :password, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 8 }

  has_many :follower_follows, foreign_key: 'followee_id', class_name: 'Follower'
  has_many :followers, through: :follower_follows

  has_many :followee_follows, foreign_key: 'follower_id', class_name: 'Follower'
  has_many :followees, through: :followee_follows

  has_many :bookmarks

  def to_token_payload
    {
      sub: id,
      email: email
    }
end
end
