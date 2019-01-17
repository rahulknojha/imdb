# frozen_string_literal: true

# Migration for addTribute
class AddAttributeToTv1 < ActiveRecord::Migration[5.2]
  def change
    add_column :tvs, :duration, :integer
  end
end
