class RemoveIdFieldsFromResponses < ActiveRecord::Migration[6.0]
  def change
    remove_column :responses, :user_id

  end
end
