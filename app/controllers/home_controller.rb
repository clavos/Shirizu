class HomeController < ApplicationController
  def index
    @episodes = Episode.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
    @shows = Show.where(release_date: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
  end
end