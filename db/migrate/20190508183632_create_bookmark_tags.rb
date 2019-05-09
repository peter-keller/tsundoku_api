class CreateBookmarkTags < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmark_tags do |t|
      t.references :tag, foreign_key: true
      t.references :bookmark, foreign_key: true

      t.timestamps
    end
  end
end
