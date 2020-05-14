class RemoveUserFromPlus1 < ActiveRecord::Migration[6.0]
  def change
    remove_reference :plus1s, :user, foreign_key: true
  end
end
