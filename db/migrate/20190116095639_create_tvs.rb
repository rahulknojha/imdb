# frozen_string_literal: true

# abcd
class CreateTvs < ActiveRecord::Migration[5.2]
  def change
    create_table :tvs do |t|
      t.string  :title
      t.integer :budget
      t.timestamps
    end
  end
end
