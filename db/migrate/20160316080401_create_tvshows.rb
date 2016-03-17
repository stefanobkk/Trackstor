class CreateTvshows < ActiveRecord::Migration
  def change
    create_table :tvshows do |t|
      t.string :name
      t.string :air_date
      t.string :run_time

      t.timestamps null: false
    end
  end
end
