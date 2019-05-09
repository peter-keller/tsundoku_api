class Api::TagsController < ApplicationController
    before_action :authenticate_user

    def index
        tags = Tag.all 
        render json: { data: tags }, status: 200
    end

end
