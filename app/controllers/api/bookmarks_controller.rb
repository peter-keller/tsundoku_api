class Api::BookmarksController < ApplicationController
  before_action :authenticate_user

  def index
    bookmarks = current_user.bookmarks
    render json: { data: bookmarks }, status: 200
  end

  def create
    puts params
    render json: { data: "hola" }, status: 200

  end

  private

  def bookmark_params

  end
end
