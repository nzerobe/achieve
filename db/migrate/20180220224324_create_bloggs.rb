class CreateBloggs < ActiveRecord::Migration[5.1]
  def change
    create_table :bloggs do |t|
      t.string :name
      t.string :subject
      t.integer :score

      t.timestamps
    end
  end
end
