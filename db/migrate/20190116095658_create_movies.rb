# frozen_string_literal: true

# Movies migration
class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :language
      t.datetime :release_date
      t.integer :collection
      t.integer :budget
      t.timestamps
    end
  end
end
