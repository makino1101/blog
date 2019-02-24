class RenameBolgColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :blogcontents, :blog, :blogs
  end
end
