class CreateBlogcontens < ActiveRecord::Migration[5.2]
  def change
    create_table :blogcontens do |t|
      t.text              :blog
      t.timestamps
    end
  end
end
