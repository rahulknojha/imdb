# frozen_string_literal: true

<<<<<<< HEAD
# abcd
=======
# Movies migration
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :language
      t.datetime :release_date
<<<<<<< HEAD
      t.integer :collection
      t.integer :budget
=======
      t.decimal :collection
      t.decimal :budget
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
      t.timestamps
    end
  end
end
