class CommentsController < ApplicationController
  def create
    @episode = Episode.find(params[:episode_id])
    @comment = @episode.comments.create(params[:comment].permit(:content))
    redirect_to episode_path(@episode)
  end

  def destroy
    @episode = Episode.find(params[:episode_id])
    @comment = @episode.comments.find(params[:id])
    @comment.destroy
    redirect_to episode_path(@episode)
  end
end
