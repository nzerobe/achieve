class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.create(rob_id: params[:rob_id])
    redirect_to robs_url
  end

  def destroy
    favorite = current_user.favorites.find_by(rob_id: params[:id]).destroy
    redirect_to robs_url
  end
end