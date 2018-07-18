class SeasonsController < ApplicationController
  before_action :set_season, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new create edit update destroy]

  def index
    @seasons = Season.includes(:show)
  end

  def show
  end

  def new
    @season = Season.new
  end

  def edit
  end

  def create
    @season = Season.new(season_params)
      if @season.save
        redirect_to @season, notice: 'Season was successfully created.'
      else
        render :new
      end
  end

  def update
      if @season.update(season_params)
        redirect_to @season, notice: 'Season was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @season.destroy
      redirect_to seasons_url, notice: 'Season was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_season
      @season = Season.includes(:show).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def season_params
      params.require(:season).permit(:number, :show_id)
    end
end
