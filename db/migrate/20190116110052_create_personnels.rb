# frozen_string_literal: true

<<<<<<< HEAD
# abcd
=======
# Personnels migration
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
class CreatePersonnels < ActiveRecord::Migration[5.2]
  def change
    create_table :personnels do |t|
      t.string :name
      t.timestamps
    end
  end
end
