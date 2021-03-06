class Api::BookmarksController < ApplicationController
  before_action :authenticate_user

  def index
    bookmarks = current_user.bookmarks
    render json: { data: bookmarks }, status: 200
  end

  def create
    bookmark = Bookmark.new(bookmark_params)
    bookmark.user_id = current_user.id
    params[:tags].each do |tag|
      bookmark.tags << Tag.find_or_create_by(name: tag.capitalize)
    end
    bookmark.save
    render json: { data: bookmark }, status: 200
  end

  def destroy
    bookmark = Bookmark.find_by(id: params[:id])
    if bookmark
      bookmark.destroy
      render json: { message: 'Comment successfully deleted.' }
    else
      render json: { error: 'Comment not found.' }, status: 404
    end
  end
  

  private

  def bookmark_params
    params.require(:bookmark).permit(:private, :title, :url, :tags)
end
end
