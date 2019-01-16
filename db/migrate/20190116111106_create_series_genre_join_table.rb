class CreateSeriesGenreJoinTable < ActiveRecord::Migration[5.2]
  def change
  	create_join_table :series, :genre do |t|
  	t.index :series_id
    t.index :genre_id
  	end
  end
end
