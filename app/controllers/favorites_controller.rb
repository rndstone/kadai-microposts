class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    logger.debug(params)
    # @post = Micropost.find(like_id)
    @post = Micropost.find(params[:like_id])
    current_user.favorites.find_or_create_by(micropost: @post)
    flash[:success] = 'お気に入りしました'
    redirect_to root_url
  end

  def destroy
    @post = Micropost.find(params[:like_id])
    favorite = current_user.favorites.find_by(micropost_id: @post.id)
    favorite.destroy if favorite
    flash[:success] = "お気に入りを解除しました"
    redirect_to root_url
  end
  
end
