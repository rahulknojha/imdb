class RemoveFieldNameFromTv < ActiveRecord::Migration[5.2]
  def change
    remove_column :tvs, :budget, :integer
  end
end
