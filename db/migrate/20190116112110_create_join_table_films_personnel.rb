# frozen_string_literal: true

<<<<<<< HEAD
# abcd
=======
# Migration for jointable
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
class CreateJoinTableFilmsPersonnel < ActiveRecord::Migration[5.2]
  def change
    create_join_table :films, :personnels do |t|
      t.index %i[film_id personnel_id]
      t.index %i[personnel_id film_id]
    end
  end
end
