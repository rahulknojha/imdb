# frozen_string_literal: true

# Theatres Migration
class CreateTheaters < ActiveRecord::Migration[5.2]
  def change
    create_table :theaters do |t|
      t.string :name
      t.text :address
      t.timestamps
    end
  end
end
