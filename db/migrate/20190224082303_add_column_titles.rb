class AddColumnTitles < ActiveRecord::Migration[5.2]
  def change
    change_column_null :blogcontents, :created_at, true
  end
end
