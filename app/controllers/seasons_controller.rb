class SeasonsController < ApplicationController
  before_action :set_season, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new create edit update destroy]

  # GET /seasons
  def index
    @seasons = Season.includes(:show)
  end

  # GET /seasons/1
  def show
  end

  # GET /seasons/new
  def new
    @season = Season.new
  end

  # GET /seasons/1/edit
  def edit
  end

  # POST /seasons
  def create
    @season = Season.new(season_params)
      if @season.save
        redirect_to @season, notice: 'Season was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /seasons/1
  def update
      if @season.update(season_params)
        redirect_to @season, notice: 'Season was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /seasons/1
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
      params.require(:season).permit(:number, :cover, :show_id)
    end
end
