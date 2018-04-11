class CreateModels < ActiveRecord::Migration[5.1]
  def change
    create_table :models do |t|
      t.string :name
      t.string :Column
      t.string :name
      t.string :Data
      t.string :type

      t.timestamps
    end
  end
end
