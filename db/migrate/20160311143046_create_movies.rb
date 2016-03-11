class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :run_time
      t.text :description
      t.string :rating
      t.string :genre

      t.timestamps null: false
    end
  end
end
