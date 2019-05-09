class GroupBookmark < ApplicationRecord
    belongs_to :group
    belongs_to :bookmark
end
