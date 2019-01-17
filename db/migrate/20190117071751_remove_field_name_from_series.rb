class RemoveFieldNameFromSeries < ActiveRecord::Migration[5.2]
  def change
    remove_column :series, :budget, :integer
  end
end
