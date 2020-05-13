class AddUserToPlus1 < ActiveRecord::Migration[6.0]
  def change
    add_reference :plus1s, :user, foreign_key: true
  end
end
