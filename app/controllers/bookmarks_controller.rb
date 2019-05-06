class BookmarksController < ApplicationController 

    def index
        bookmarks = Bookmark.all
        render json: {data: bookmarks}, status: 200
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