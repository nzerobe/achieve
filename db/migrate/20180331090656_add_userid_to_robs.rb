class AddUseridToRobs < ActiveRecord::Migration[5.1]
  def change
    add_reference :robs, :user, foreign_key: true
  end
end
