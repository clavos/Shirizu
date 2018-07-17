class EpisodesController < ApplicationController
  before_action :set_episode, only: %i[show edit update destroy saw]
  before_action :authenticate_user!, only: %i[new create edit update destroy saw]

  def index
    @episodes = Episode.includes(:season)
  end

  def show
  end

  def new
    @episode = Episode.new
  end

  def edit
  end

  def create
    @episode = Episode.new(episode_params)
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_episode
      @episode = Episode.includes(:season).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def episode_params
      params.require(:episode).permit(:name, :storyline, :image, :runtime, :release_at)
    end
end
