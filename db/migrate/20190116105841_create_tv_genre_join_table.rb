# frozen_string_literal: true

# abcd
class CreateTvGenreJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :tv, :genre do |t|
    end
  end
end
