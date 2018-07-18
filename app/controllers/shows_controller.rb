class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: %i[new create edit update destroy]

  def index
    @shows = Show.includes(:companies)
  end

  def show
  end

  def new
    @show = Show.new
  end

  def edit
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to @show, notice: 'La série a bien été ajoutée.'
    else
      render :new
    end
  end

  def update
    if @show.update(show_params)
      redirect_to @show, notice: 'La série a bien été mise à jour.'
    else
      render :edit
    end
  end

  def destroy
    if @show.destroy
      redirect_to shows_url
    else
      render 'show'
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_show
    @show = Show.includes(:companies).find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def show_params
    params.require(:show).permit(:title, :storyline, :release_date, :end_date, :image, company_ids: [])
  end
end