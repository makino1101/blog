class CreateBlogcontents < ActiveRecord::Migration[5.2]
  def change
    create_table :blogcontents do |t|
      t.text              :blog
      t.timestamps
    end
  end
end
