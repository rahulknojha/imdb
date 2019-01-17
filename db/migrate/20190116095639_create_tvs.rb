# frozen_string_literal: true

<<<<<<< HEAD
# abcd
=======
# Tvs migration
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
class CreateTvs < ActiveRecord::Migration[5.2]
  def change
    create_table :tvs do |t|
      t.string  :title
      t.integer :budget
      t.timestamps
    end
  end
end
