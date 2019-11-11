class AddPriorityDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default( :tasks, :priority, 0)
    change_column_null(:tasks, :priority, false)
  end
end
