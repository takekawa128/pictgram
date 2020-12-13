class FavoritesController < ApplicationController
  def index
    @favorite_topics = current_user.favorite_topics
  end

#Favoritesクラスのインスタンスfavoriteを生成する
  def create
    favorite = Favorite.new
#favorite.user_idに現在ログインしているuser(current_user)のidを保存する
    favorite.user_id = current_user.id
#favorite.topic_idにparams[:topic_id]（後述）を保存する
    favorite.topic_id = params[:topic_id]

#favoriteをsaveし、その成否によって条件分岐する
    if favorite.save
      redirect_to topics_path, success: 'お気に入りに登録しました'
    else
      redirect_to topics_path, danger: 'お気に入りに登録に失敗しました'
    end
  end
end