class AddingUserToResponse < ActiveRecord::Migration[6.0]
  def change
    add_reference :responses, :user, foreign_key: true
  end
end
