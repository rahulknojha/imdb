# frozen_string_literal: true

<<<<<<< HEAD
# abcd
=======
# Roles migration
>>>>>>> 2944d4773725742e8b0c9470c80130085f3f24f5
class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :title
      t.timestamps
    end
  end
end
