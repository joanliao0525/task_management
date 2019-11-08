class ChangePositionName < ActiveRecord::Migration[6.0]
  def change
    rename_column(:tasks, :position, :location)
  end
end
