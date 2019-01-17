# frozen_string_literal: true

# Migration for addTribute
class AddAttributeToTv < ActiveRecord::Migration[5.2]
  def change
    add_column :tvs, :premire_date, :datetime
    add_column :tvs, :language, :string
    add_column :tvs, :episode, :integer
  end
end
