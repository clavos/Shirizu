class CreateUsersEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :users_episodes, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :episode, index: true

      t.timestamps
    end
  end
end
