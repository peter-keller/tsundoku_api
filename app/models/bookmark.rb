class Bookmark < ApplicationRecord
  belongs_to :user
  has_many :bookmark_tags, dependent: :destroy 
  has_many :tags, through: :bookmark_tags, dependent: :destroy 

  has_many :group_bookmarks
  has_many :groups, through: :group_bookmarks
end
