# frozen_string_literal: true

# Genre Migration
class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.string :name
      t.references :genreable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
