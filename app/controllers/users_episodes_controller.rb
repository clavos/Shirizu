class UsersEpisodesController < ApplicationController
  def edit
  end

  def create
    @episode = UsersEpisodes.new(episode_params)
    if @episode.save
      redirect_to @episode, notice: 'Episode was successfully created.'
    else
      render :new
    end
  end

  def update
    if @episode.update(episode_params)
      redirect_to @episode, notice: 'Episode was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @episode.destroy
    redirect_to episodes_url, notice: 'Episode was successfully destroyed.'
  end
end