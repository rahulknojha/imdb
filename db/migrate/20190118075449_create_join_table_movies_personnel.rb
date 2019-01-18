class CreateJoinTableMoviesPersonnel < ActiveRecord::Migration[5.2]
  def change
  	create_join_table :movies, :personnels do |t|
  		t.index :movies_id
  		t.index :personnels_id
  	end
  end
end
