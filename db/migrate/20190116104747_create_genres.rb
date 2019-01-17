# frozen_string_literal: true

<<<<<<< HEAD
# abcd
=======
# Genre Migration
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :name
<<<<<<< HEAD
=======
      t.references :genreable, polymorphic: true, index: true
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
      t.timestamps
    end
  end
end
