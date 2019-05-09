class Api::BookmarksController < ApplicationController
  before_action :authenticate_user

  def index
    bookmarks = current_user.bookmarks
    render json: { data: bookmarks }, status: 200
  end

  def create
    bookmark = Bookmark.new(bookmark_params)
    bookmark.user_id = current_user.id
    if bookmark.save
      render json: { data: bookmark }, status: 200
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:private, :title, :url)
end
end
