class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.integer :episode_num
      t.integer :season_num
      t.date :air_date
      t.string :rating
      t.references :tvshow, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
