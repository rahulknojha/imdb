# frozen_string_literal: true

<<<<<<< HEAD
# abcd
=======
# Series migration
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :name
<<<<<<< HEAD
      t.integer :budget
=======
      t.decimal :budget
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
      t.timestamps
    end
  end
end
