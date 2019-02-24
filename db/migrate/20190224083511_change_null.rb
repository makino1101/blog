class ChangeNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :blogcontents, :updated_at, true
  end
end
