# frozen_string_literal: true

# Migration for addTribute
class AddAttributeToSeries1 < ActiveRecord::Migration[5.2]
  def change
    add_column :series, :duration, :integer
  end
end
