class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.text :content
      t.timestamps null:true
    end
  end
end
