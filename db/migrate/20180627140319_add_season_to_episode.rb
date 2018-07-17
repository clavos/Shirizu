class AddSeasonToEpisode < ActiveRecord::Migration[5.2]
  def change
    add_reference :episodes, :season, foreign_key: true
  end
end
