class FavoritesController < ApplicationController
  
  def index
    @microposts = Micropost.order(id: :desc).page(params[:page]).per(25)
  end
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to root_url
  end
  
  
end

