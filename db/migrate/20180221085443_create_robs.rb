class CreateRobs < ActiveRecord::Migration[5.1]
  def change
    create_table :robs do |t|
      t.string :title
      t.text :content
      t.text :image
       
      t.timestamps
    end
  end
end
