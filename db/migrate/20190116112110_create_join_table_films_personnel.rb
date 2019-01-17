# frozen_string_literal: true

# abcd
class CreateJoinTableFilmsPersonnel < ActiveRecord::Migration[5.2]
  def change
    create_join_table :films, :personnels do |t|
      t.index %i[film_id personnel_id]
      t.index %i[personnel_id film_id]
    end
  end
end
