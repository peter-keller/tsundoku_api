class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.text :title
      t.text :url
      t.references :user, foreign_key: true
      t.boolean :private

      t.timestamps
    end
  end
end
