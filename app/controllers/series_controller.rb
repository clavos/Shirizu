class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def show
    @serie = Serie.find(params[:id])
  end
end