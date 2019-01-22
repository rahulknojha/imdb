# frozen_string_literal: true

# To replace Film_personnel with movies_ personnel
class DropTableFilmPersonnel < ActiveRecord::Migration[5.2]
  def change
    drop_table :films_personnels
  end
end
