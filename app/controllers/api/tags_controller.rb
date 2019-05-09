class Api::TagsController < ApplicationController
    before_action :authenticate_user

    def index
        tags = Tag.all 
        render json: { data: tags }, status: 200
    end

    def search
        tags = Tag.where('lower(name) like ?', "%#{params[:search].downcase}%")
        # gave up at this point 
    end

end
