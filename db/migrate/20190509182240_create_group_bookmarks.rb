class CreateGroupBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :group_bookmarks do |t|
      t.integer :group_id
      t.integer :bookmark_id

      t.timestamps
    end
  end
end
