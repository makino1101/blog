class Records < ActiveRecord::Migration[5.2]
  def change
    drop_table :blogcontens
    drop_table :blogcontents
  end
end
