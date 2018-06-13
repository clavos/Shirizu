class SeriesController < ApplicationController
  before_action :set_serie, only: %i[show edit update destroy]

  def index
    @series = Serie.all
  end

  def show; end

  def new
    @serie = Serie.new
  end
  def create
    @serie = Serie.new(serie_params)
    if @serie.save
      redirect_to @serie
    else
      render 'new_series'
    end
  end
  def edit; end
  def update
    if @serie.update(serie_params)
      redirect_to @serie
    else
      render 'edit'
    end
  end
  def destroy
    if @serie.destroy
      redirect_to series_url
    else
      render 'show'
    end
  end

  private

  def serie_params
    params.require(:serie).permit(
        :title,
        :synopsis,
        :nationality)
  end
  def set_serie
    @serie = Serie.find(params[:id])
  end
end