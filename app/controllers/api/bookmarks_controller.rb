class Api::BookmarksController < ApplicationController
  before_action :authenticate_user
  def index
    puts 'CURRENT'
    puts current_user
    bookmarks = Bookmark.all
    render json: { data: bookmarks }, status: 200
  end

  # def show
  #     bookmark = Bookmark.find_by(id: params[:id])
  #     if bookmark
  #         render json: {data: bookmark}, status: 200
  #     else
  #         render json: {data: "Not found"}, status: 400
  #     end
  # end
end
