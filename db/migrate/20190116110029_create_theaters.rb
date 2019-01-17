# frozen_string_literal: true

<<<<<<< HEAD
# abcd
=======
# Theatres Migration
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
class CreateTheaters < ActiveRecord::Migration[5.2]
  def change
    create_table :theaters do |t|
      t.string :name
<<<<<<< HEAD
      t.string :address
=======
      t.text :address
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
      t.timestamps
    end
  end
end
