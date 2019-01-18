class DropTableFilmPersonnel < ActiveRecord::Migration[5.2]
  def change
  	drop_table :films_personnels
  end
end
