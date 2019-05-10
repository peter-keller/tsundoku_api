class Api::GroupsController < ApplicationController
  before_action :authenticate_user

  def index
    groups = current_user.groups
    render json: groups
  end

  def create
    group = Group.new(group_params)
    if group.save
      group.users << current_user
      render json: group
    else
      render json: { data: 'error' }, status: 500
    end
  end

  def search
    groups = Group.where('lower(name) like ?', "%#{params[:search].downcase}%")
    render json: groups
  end

  def show
    group = Group.find_by(id: params[:id])
    if group
      render json: group.bookmarks
    else
      render json: { data: 'error' }, status: 500
    end
  end

  def share
    group = Group.find_by(id: params[:id])
    if group
      group.bookmarks << Bookmark.find_by(id: params[:bookmark_id])
      render json: group
    else
      render json: { data: 'error' }, status: 500
    end
  end

  def joingroup
    group = Group.find_by(id: params[:id])
    if group.users.include?(current_user)
      render json: group
    else
      group.users << current_user
      render json: { data: 'error' }, status: 200
    end
  end

  private

  def group_params
    params.require(:group).permit(:name)
  end
end
